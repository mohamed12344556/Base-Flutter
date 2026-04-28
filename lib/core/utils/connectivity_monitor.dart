import 'dart:async';
import 'dart:developer' as developer;

import 'package:connectivity_plus/connectivity_plus.dart';

/// A singleton utility that exposes a [Stream<bool>] reflecting the
/// device's current internet connectivity state.
///
/// Register in GetIt and inject wherever online/offline awareness is needed.
///
/// ```dart
/// final monitor = sl<ConnectivityMonitor>();
/// monitor.isConnectedStream.listen((connected) {
///   // react to online / offline transitions
/// });
/// ```
class ConnectivityMonitor {
  final Connectivity _connectivity;
  late final StreamController<bool> _controller;
  StreamSubscription<List<ConnectivityResult>>? _subscription;
  bool _lastKnown = true;

  ConnectivityMonitor({Connectivity? connectivity})
    : _connectivity = connectivity ?? Connectivity() {
    _controller = StreamController<bool>.broadcast(
      onListen: _startListening,
      onCancel: _stopListening,
    );
    // Eagerly check once so the initial value is populated.
    _checkNow();
  }

  // ---------------------------------------------------------------------------
  // Public API
  // ---------------------------------------------------------------------------

  /// A broadcast stream that emits `true` when the device is connected and
  /// `false` when it goes offline.  Only fires when the value *changes*.
  Stream<bool> get isConnectedStream => _controller.stream;

  /// The most recently observed connectivity state.
  bool get isConnected => _lastKnown;

  /// Performs a fresh connectivity check and updates [isConnected].
  Future<bool> checkNow() async {
    await _checkNow();
    return _lastKnown;
  }

  /// Release resources. Call when the app shuts down.
  void dispose() {
    _stopListening();
    _controller.close();
  }

  // ---------------------------------------------------------------------------
  // Private helpers
  // ---------------------------------------------------------------------------

  void _startListening() {
    _subscription ??= _connectivity.onConnectivityChanged.listen((
      List<ConnectivityResult> results,
    ) {
      final connected = _isConnected(results);
      if (connected != _lastKnown) {
        _lastKnown = connected;
        _controller.add(connected);
        developer.log(
          'Connectivity changed: ${connected ? "ONLINE" : "OFFLINE"}',
          name: 'eol.connectivity',
        );
      }
    });
  }

  void _stopListening() {
    _subscription?.cancel();
    _subscription = null;
  }

  Future<void> _checkNow() async {
    try {
      final results = await _connectivity.checkConnectivity();
      final connected = _isConnected(results);
      if (connected != _lastKnown) {
        _lastKnown = connected;
        if (!_controller.isClosed) {
          _controller.add(connected);
        }
      }
    } catch (e) {
      developer.log('Connectivity check failed: $e', name: 'eol.connectivity');
    }
  }

  static bool _isConnected(List<ConnectivityResult> results) {
    return results.any(
      (r) => r != ConnectivityResult.none && r != ConnectivityResult.bluetooth,
    );
  }
}
