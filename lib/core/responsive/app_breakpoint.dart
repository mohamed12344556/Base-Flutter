import 'package:flutter/material.dart';

/// Defines the three adaptive breakpoints used throughout the app.
///
/// The breakpoint is determined by the screen width from [MediaQuery]:
/// - [compact]: width < 600 dp (phones)
/// - [medium]: 600 dp ≤ width < 840 dp (compact tablets, large phones in landscape)
/// - [expanded]: width ≥ 840 dp (tablets in landscape)
///
/// Use [breakpointOf] to determine the current breakpoint from a [BuildContext].
enum AppBreakpoint {
  compact,
  medium,
  expanded,
}

/// Returns the [AppBreakpoint] for the given [context] based on screen width.
///
/// Uses [MediaQuery.sizeOf] to determine the current width:
/// - Returns [AppBreakpoint.compact] when width < 600
/// - Returns [AppBreakpoint.medium] when 600 ≤ width < 840
/// - Returns [AppBreakpoint.expanded] when width ≥ 840
AppBreakpoint breakpointOf(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 600) return AppBreakpoint.compact;
  if (width < 840) return AppBreakpoint.medium;
  return AppBreakpoint.expanded;
}
