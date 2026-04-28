import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A banner widget that slides in from the top when the device loses network
/// connectivity and slides back out when it reconnects.
///
/// Wrap your [Scaffold] body (or place it in a [Stack]) to show the indicator
/// above other content without affecting layout.
///
/// Example:
/// ```dart
/// Stack(
///   children: [
///     MyMainContent(),
///     const OfflineIndicator(),
///   ],
/// )
/// ```
class OfflineIndicator extends StatefulWidget {
  const OfflineIndicator({super.key});

  @override
  State<OfflineIndicator> createState() => _OfflineIndicatorState();
}

class _OfflineIndicatorState extends State<OfflineIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;

  bool _isOffline = false;
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(
      _onConnectivityChanged,
    );

    // Check initial state
    Connectivity().checkConnectivity().then((results) {
      _onConnectivityChanged(results);
    });
  }

  void _onConnectivityChanged(List<ConnectivityResult> results) {
    final offline = results.every((r) => r == ConnectivityResult.none);
    if (!mounted) return;

    if (offline != _isOffline) {
      setState(() => _isOffline = offline);
      if (offline) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SlideTransition(
        position: _slideAnimation,
        child: Material(
          color: Colors.transparent,
          child: SafeArea(
            bottom: false,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: const Color(0xFFD32F2F),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wifi_off_rounded, color: Colors.white, size: 18.r),
                  SizedBox(width: 8.w),
                  Text(
                    'No internet connection',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Convenience widget that wraps a [child] widget in a [Stack] with the
/// [OfflineIndicator] overlay — so you don't need to manually compose the Stack.
///
/// Example:
/// ```dart
/// OfflineAware(
///   child: Scaffold(body: MyBody()),
/// )
/// ```
class OfflineAware extends StatelessWidget {
  final Widget child;

  const OfflineAware({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [child, const OfflineIndicator()]);
  }
}
