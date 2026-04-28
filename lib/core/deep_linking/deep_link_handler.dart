import 'dart:async';
import 'dart:developer' as dev;

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';

/// Handles incoming deep links. Wire up your own navigation logic in [_handleUri].
class DeepLinkHandler {
  final GlobalKey<NavigatorState> _navigatorKey;

  DeepLinkHandler(this._navigatorKey);

  StreamSubscription<Uri>? _linkSubscription;
  Uri? _pendingDeepLink;

  Future<void> initialize() async {
    final appLinks = AppLinks();

    _linkSubscription = appLinks.uriLinkStream.listen(
      _handleUri,
      onError: (err) {
        dev.log('DeepLinkHandler: URI stream error: $err', name: 'base.deep_link');
      },
    );

    try {
      final initialUri = await appLinks.getInitialLink();
      if (initialUri != null) {
        dev.log('DeepLinkHandler: Initial URI: $initialUri', name: 'base.deep_link');
        await _handleUri(initialUri);
      }
    } catch (e) {
      dev.log('DeepLinkHandler: Error getting initial link: $e', name: 'base.deep_link');
    }
  }

  Future<void> _handleUri(Uri uri) async {
    dev.log('DeepLinkHandler: Processing URI: $uri', name: 'base.deep_link');
    _pendingDeepLink = uri;
    // Add navigation logic here using _navigatorKey.currentState
    _navigatorKey.currentState?.pushNamed(uri.path);
  }

  Uri? consumePendingDeepLink() {
    final link = _pendingDeepLink;
    _pendingDeepLink = null;
    return link;
  }

  void dispose() {
    _linkSubscription?.cancel();
    _linkSubscription = null;
  }
}
