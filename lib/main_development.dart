// flutter build apk --release --flavor development -t lib/main_development.dart
//   --dart-define-from-file=secrets/.env.development.json
import 'bootstrap.dart';
import 'core/config/environment_config.dart';

Future<void> main() => bootstrap(
      config: EnvironmentConfig.development(),
      isProd: false,
      enableDeepLinking: true,
      logFcmToken: true,
    );
