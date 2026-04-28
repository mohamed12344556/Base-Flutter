import 'package:flutter/material.dart';

/// Centralized shadow constants for the entire app.
///
/// ```dart
/// Container(
///   decoration: BoxDecoration(
///     boxShadow: [AppShadows.light],
///   ),
/// )
/// ```
class AppShadows {
  AppShadows._();

  /// Subtle shadow for cards and list items.
  static const BoxShadow light = BoxShadow(
    color: Color(0x0D000000), // black 5%
    blurRadius: 8,
    offset: Offset(0, 2),
  );

  /// Medium shadow for elevated cards and floating elements.
  static const BoxShadow medium = BoxShadow(
    color: Color(0x1A000000), // black 10%
    blurRadius: 10,
    offset: Offset(0, 4),
  );

  /// Heavy shadow for modals and dialogs.
  static const BoxShadow heavy = BoxShadow(
    color: Color(0x42000000), // black 26%
    blurRadius: 10,
    offset: Offset(0, 5),
  );

  /// Soft bottom shadow for app bars.
  static const BoxShadow appBar = BoxShadow(
    color: Color(0x0D000000),
    blurRadius: 6,
    offset: Offset(0, 2),
  );

  /// Legacy alias - same as [heavy].
  static const BoxShadow shadow1 = heavy;
}
