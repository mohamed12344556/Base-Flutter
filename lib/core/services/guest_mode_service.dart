import 'dart:developer';

import 'package:flutter/material.dart';

import '../cache/shared_pref_helper.dart';
import '../constants/key_strings.dart';
import '../widgets/login_prompt_bottom_sheet.dart';

/// Centralized service for managing Guest Mode state.
///
/// Guest mode allows users to explore the app without
/// signing in. The state persists across app restarts via
/// SharedPreferences.
class GuestModeService {
  static bool _isGuestMode = false;

  /// Whether the app is currently in guest mode.
  static bool get isGuest => _isGuestMode;

  /// Whether the user is fully authenticated (not guest).
  static bool get isAuthenticated => !_isGuestMode && AppState.isLoggedIn;

  // ──────────────── Lifecycle ────────────────

  /// Initialize guest mode state from storage.
  /// Must be called during app startup, after
  /// [SharedPreferences] is available.
  static Future<void> initialize() async {
    try {
      _isGuestMode = await SharedPrefHelper.getBool(StorageKeys.isGuestMode);
      log('GuestModeService initialized - isGuest: $_isGuestMode');
    } catch (e) {
      log('Error initializing GuestModeService: $e');
      _isGuestMode = false;
    }
  }

  /// Enable guest mode and persist the state.
  static Future<void> enableGuestMode() async {
    _isGuestMode = true;
    await SharedPrefHelper.setData(StorageKeys.isGuestMode, true);
    log('Guest mode enabled');
  }

  /// Disable guest mode (called on successful login/signup).
  static Future<void> disableGuestMode() async {
    _isGuestMode = false;
    await SharedPrefHelper.setData(StorageKeys.isGuestMode, false);
    log('Guest mode disabled');
  }

  // ──────────────── UI Helpers ────────────────

  /// Shows a login prompt bottom sheet if the user is a guest.
  ///
  /// Returns `true` if the user is a guest (prompt shown),
  /// `false` if the user is authenticated (no prompt needed).
  ///
  /// Usage:
  /// ```dart
  /// if (GuestModeService.guardFeature(context, 'Community')) {
  ///   return; // Guest – prompt is already shown
  /// }
  /// // Authenticated – proceed normally
  /// ```
  static bool guardFeature(BuildContext context, {String? featureName}) {
    if (!_isGuestMode) return false;

    LoginPromptBottomSheet.show(context, featureName: featureName);
    return true;
  }
}
