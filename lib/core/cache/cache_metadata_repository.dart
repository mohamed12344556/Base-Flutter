import 'dart:developer' as developer;

import 'package:hive_ce_flutter/hive_flutter.dart';

import 'cache_metadata.dart';

/// Repository for tracking per-endpoint cache freshness metadata.
///
/// Stores [CacheMetadata] as JSON maps in a Hive box, enabling
/// fine-grained staleness checks independent of the HTTP cache layer.
class CacheMetadataRepository {
  static const String _boxName = 'cache_metadata';
  Box<Map>? _box;

  /// Opens (or reuses) the Hive box.
  Future<void> init() async {
    _box ??= await Hive.openBox<Map>(_boxName);
  }

  /// Persists metadata for [endpoint] with the given [fetchedAt] timestamp.
  /// Automatically calculates [expiresAt] as `fetchedAt + 7 days`.
  Future<void> saveMetadata(String endpoint, DateTime fetchedAt) async {
    await _ensureInit();
    final meta = CacheMetadata(
      endpoint: endpoint,
      fetchedAt: fetchedAt,
      expiresAt: fetchedAt.add(const Duration(days: 7)),
    );
    await _box!.put(endpoint, meta.toJson());
  }

  /// Returns the [CacheMetadata] for [endpoint], or `null` if not cached.
  Future<CacheMetadata?> getMetadata(String endpoint) async {
    await _ensureInit();
    final raw = _box!.get(endpoint);
    if (raw == null) return null;
    try {
      return CacheMetadata.fromJson(Map<String, dynamic>.from(raw));
    } catch (e) {
      developer.log(
        'Failed to deserialize cache metadata for $endpoint: $e',
        name: 'eol.cache',
      );
      await _box!.delete(endpoint);
      return null;
    }
  }

  /// Returns `true` if [endpoint] has no metadata or its cache has expired.
  Future<bool> isExpired(String endpoint) async {
    final meta = await getMetadata(endpoint);
    if (meta == null) return true;
    return DateTime.now().isAfter(meta.expiresAt);
  }

  /// Removes all stored metadata entries.
  Future<void> clearAll() async {
    await _ensureInit();
    await _box!.clear();
    developer.log('Cache metadata cleared', name: 'eol.cache');
  }

  Future<void> _ensureInit() async {
    if (_box == null || !_box!.isOpen) {
      await init();
    }
  }
}
