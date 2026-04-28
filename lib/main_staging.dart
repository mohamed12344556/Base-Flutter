// flutter build apk --release --flavor staging -t lib/main_staging.dart
//   --dart-define-from-file=secrets/.env.staging.json
import 'bootstrap.dart';
import 'core/config/environment_config.dart';

Future<void> main() => bootstrap(
      config: EnvironmentConfig.staging(),
      isProd: false,
      enableDeepLinking: true,
      logFcmToken: true,
    );
