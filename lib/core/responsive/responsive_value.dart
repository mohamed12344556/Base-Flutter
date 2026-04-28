import 'package:flutter/material.dart';

import 'app_breakpoint.dart';

/// A value that resolves to different instances based on the current [AppBreakpoint].
///
/// Use this for per-property variation inside a single layout variant.
/// For layout-level changes (navigation chrome), use [AdaptiveLayout] instead.
///
/// Example:
/// ```dart
/// final padding = ResponsiveValue<EdgeInsets>(
///   compact: EdgeInsets.all(16),
///   medium: EdgeInsets.all(24),
///   expanded: EdgeInsets.all(32),
/// ).resolve(context);
/// ```
class ResponsiveValue<T> {
  const ResponsiveValue({
    required this.compact,
    this.medium,
    this.expanded,
  });

  final T compact;
  final T? medium;
  final T? expanded;

  /// Returns the value for the current breakpoint, falling back to [compact].
  T resolve(BuildContext context) {
    switch (breakpointOf(context)) {
      case AppBreakpoint.compact:
        return compact;
      case AppBreakpoint.medium:
        return medium ?? compact;
      case AppBreakpoint.expanded:
        return expanded ?? medium ?? compact;
    }
  }
}
