// =============================================================================
// PRODUCTION BUILD COMMANDS (with obfuscation + Crashlytics symbolication)
// =============================================================================
//
// APK:
//   flutter build apk --release --obfuscate \
//     --split-debug-info=build/debug-info \
//     --dart-define-from-file=secrets/.env.production.json \
//     -t lib/main_production.dart
//
// App Bundle (Play Store):
//   flutter build appbundle --release --obfuscate \
//     --split-debug-info=build/debug-info \
//     --dart-define-from-file=secrets/.env.production.json \
//     -t lib/main_production.dart
//
// iOS:
//   flutter build ios --release --obfuscate \
//     --split-debug-info=build/debug-info \
//     --dart-define-from-file=secrets/.env.production.json \
//     -t lib/main_production.dart
//
// IMPORTANT: Upload debug symbols after each build:
//   firebase crashlytics:symbols:upload --app=<FIREBASE_APP_ID> build/debug-info
// =============================================================================
import 'bootstrap.dart';
import 'core/config/environment_config.dart';

Future<void> main() => bootstrap(
      config: EnvironmentConfig.production(),
      isProd: true,
      trackAppVersion: true,
    );
