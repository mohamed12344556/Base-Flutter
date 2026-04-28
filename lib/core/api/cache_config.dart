import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

/// Cache configuration for Dio requests.
///
/// Uses [MemCacheStore] (100 MB) with [hitCacheOnNetworkFailure] enabled so
/// cached responses are served when the device goes offline during a session.
/// Max stale is 7 days. Real-time endpoints are excluded from caching.
///
/// Note: file-based persistence requires dio_cache_interceptor_hive_store
/// which is incompatible with dio_cache_interceptor v4. Upgrade when
/// a compatible version is released.
class CacheConfig {
  static CacheOptions? _cacheOptions;
  static CacheStore? _cacheStore;

  /// Initializes the cache store. Call once during app startup.
  static Future<void> init() async {
    _cacheStore ??= MemCacheStore(maxSize: 100 * 1024 * 1024); // 100 MB
  }

  /// Returns the shared [CacheStore] instance.
  static CacheStore get store => _cacheStore ?? MemCacheStore();

  /// Default cache options with offline resilience.
  static CacheOptions getCacheOptions() {
    _cacheOptions ??= CacheOptions(
      store: store,

      // Default cache policy - try cache first, then network if expired
      policy: CachePolicy.request,

      // Maximum age of cached data (7 days)
      maxStale: const Duration(days: 7),

      // Cache priority
      priority: CachePriority.high,

      // Optional: Custom cipher for encryption
      cipher: null,

      // Key builder for cache identification
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,

      // Allow POST requests to be cached (useful for some APIs)
      allowPostMethod: false,

      // Return cached data when the network is unavailable
      hitCacheOnNetworkFailure: true,
    );

    return _cacheOptions!;
  }

  /// Get cache options for requests that should always fetch fresh data
  static CacheOptions getRefreshCacheOptions() {
    return CacheOptions(
      store: store,
      policy: CachePolicy.refresh,
      maxStale: const Duration(days: 7),
      priority: CachePriority.high,
    );
  }

  /// Get cache options for requests that should use cache or network
  static CacheOptions getCacheStoreOptions() {
    return CacheOptions(
      store: store,
      policy: CachePolicy.request,
      maxStale: const Duration(days: 30),
      priority: CachePriority.high,
    );
  }

  /// Get cache options for specific duration
  static CacheOptions getCustomCacheOptions({
    required Duration maxAge,
    CachePolicy? policy,
  }) {
    return CacheOptions(
      store: store,
      policy: policy ?? CachePolicy.forceCache,
      maxStale: maxAge,
      priority: CachePriority.normal,
    );
  }

  /// Clear all cached data
  static Future<void> clearCache() async {
    if (_cacheOptions != null) {
      await _cacheOptions!.store?.clean();
    }
  }

  /// Delete specific cache entry by key
  static Future<void> deleteCacheByKey(String key) async {
    if (_cacheOptions != null) {
      await _cacheOptions!.store?.delete(key);
    }
  }

  /// Get cache options for real-time APIs (Community, Questions, SignalR)
  /// These endpoints should NEVER be cached as they need fresh data
  static CacheOptions getNoCacheOptions() {
    return CacheOptions(
      store: store,
      policy: CachePolicy.noCache,
      maxStale: const Duration(seconds: 0),
      priority: CachePriority.high,
    );
  }
}
