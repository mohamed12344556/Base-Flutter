import 'package:package_info_plus/package_info_plus.dart';

import '../constants/app_constants.dart';
import 'remote_config_service.dart';

class MinVersionChecker {
  MinVersionChecker(this.remoteConfigService);

  final RemoteConfigService remoteConfigService;

  Future<bool> isForceUpdateRequired() async {
    try {
      final minVersionString = remoteConfigService.remoteConfig.getString('min_app_version');
      final packageInfo = await PackageInfo.fromPlatform();
      return _compareVersions(
            packageInfo.version,
            minVersionString.isNotEmpty ? minVersionString : AppConstants.minSupportedVersion,
          ) < 0;
    } catch (_) {
      return false;
    }
  }

  int _compareVersions(String current, String minimum) {
    final currentParts = current.split('.').map((e) => int.tryParse(e) ?? 0).toList();
    final minimumParts = minimum.split('.').map((e) => int.tryParse(e) ?? 0).toList();

    for (var i = 0; i < 3; i++) {
      final c = i < currentParts.length ? currentParts[i] : 0;
      final m = i < minimumParts.length ? minimumParts[i] : 0;
      if (c < m) return -1;
      if (c > m) return 1;
    }
    return 0;
  }
}