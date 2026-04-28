import 'package:flutter/material.dart';

import 'app_breakpoint.dart';

/// Selects a layout builder based on the current screen-width breakpoint.
///
/// At minimum, [compact] must be provided. If [medium] or [expanded] are
/// omitted, [compact] is used as the fallback for that breakpoint.
///
/// Wrap the scaffold body or navigation chrome with this widget. Use
/// [ResponsiveValue] for per-property variation inside a single layout.
class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    required this.compact,
    this.medium,
    this.expanded,
    super.key,
  });

  final WidgetBuilder compact;
  final WidgetBuilder? medium;
  final WidgetBuilder? expanded;

  @override
  Widget build(BuildContext context) {
    switch (breakpointOf(context)) {
      case AppBreakpoint.compact:
        return compact(context);
      case AppBreakpoint.medium:
        return medium != null ? medium!(context) : compact(context);
      case AppBreakpoint.expanded:
        return expanded != null
            ? expanded!(context)
            : medium != null
                ? medium!(context)
                : compact(context);
    }
  }
}
