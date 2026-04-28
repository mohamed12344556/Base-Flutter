import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../services/guest_mode_service.dart';
import 'login_prompt_bottom_sheet.dart';

/// A widget that guards its [child] behind authentication.
///
/// When the app is in guest mode:
/// - If [showPromptOnTap] is `true` (default), wraps the child
///   in a [GestureDetector] that absorbs taps and shows a
///   [LoginPromptBottomSheet].
/// - If [showPromptOnTap] is `false`, displays [guestFallback]
///   instead of the child.
///
/// When the user is authenticated, [child] is displayed normally.
///
/// Example:
/// ```dart
/// GuestGuard(
///   featureName: 'Notes',
///   child: NotesList(),
/// )
/// ```
class GuestGuard extends StatelessWidget {
  /// The widget to display when the user is authenticated.
  final Widget child;

  /// Optional alternative widget displayed for guests
  /// when [showPromptOnTap] is `false`.
  final Widget? guestFallback;

  /// Label shown in the login prompt (e.g. "Community").
  final String? featureName;

  /// When `true`, the [child] is rendered but wrapped
  /// in a gesture detector that shows the login prompt
  /// on tap. When `false`, [guestFallback] is shown instead.
  final bool showPromptOnTap;

  const GuestGuard({
    super.key,
    required this.child,
    this.guestFallback,
    this.featureName,
    this.showPromptOnTap = true,
  });

  @override
  Widget build(BuildContext context) {
    if (!GuestModeService.isGuest) return child;

    if (showPromptOnTap) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () =>
            LoginPromptBottomSheet.show(context, featureName: featureName),
        child: AbsorbPointer(child: child),
      );
    }

    return guestFallback ?? Center(child: Text(S.of(context).login_required));
  }
}
