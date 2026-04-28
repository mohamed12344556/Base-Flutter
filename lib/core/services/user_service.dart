import 'dart:convert';
import 'dart:developer';

import '../api/token_manager.dart';
import '../../features/auth/data/models/auth_response.dart';

class UserService {
  UserService._();

  static Future<UserData?> getUserDataFromToken() async {
    try {
      final tokens = await TokenManager.getTokens();
      if (tokens == null) return null;

      final token = tokens.accessToken;
      final parts = token.split('.');
      if (parts.length != 3) return null;

      final payload = base64Url.normalize(parts[1]);
      final decoded = utf8.decode(base64Url.decode(payload));
      final data = json.decode(decoded) as Map<String, dynamic>;

      final userId =
          data['sub'] as String? ??
          data['nameid'] as String? ??
          data['id'] as String?;

      if (userId == null) return null;

      return UserData(
        id: userId,
        email: data['email'] as String?,
        name: data['name'] as String? ?? data['unique_name'] as String?,
        role: data['role'] as String?,
        xp: data['xp'] as int? ?? 0,
      );
    } catch (e) {
      log('UserService: Error extracting user data from token: $e');
      return null;
    }
  }

  static Future<void> clearUserData() async {
    log('UserService: User data cleared');
  }
}
