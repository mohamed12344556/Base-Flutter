enum EnvironmentType { development, staging, production }

enum LogLevel { verbose, info, error }

class EnvironmentConfig {
  final EnvironmentType name;
  final String baseUrl;
  final String hubUrl;
  final String aiServiceBaseUrl;
  final LogLevel logLevel;
  final bool enableCrashReporting;

  const EnvironmentConfig._({
    required this.name,
    required this.baseUrl,
    required this.hubUrl,
    required this.aiServiceBaseUrl,
    required this.logLevel,
    required this.enableCrashReporting,
  });

  factory EnvironmentConfig.development() {
    const base = 'https://eol-eg.runasp.net';
    return const EnvironmentConfig._(
      name: EnvironmentType.development,
      baseUrl: base,
      hubUrl: '$base/communityHub',
      aiServiceBaseUrl: 'https://quiz.geniusaipro.online',
      logLevel: LogLevel.verbose,
      enableCrashReporting: false,
    );
  }

  factory EnvironmentConfig.staging() {
    const base = 'https://staging-mh.runasp.net';
    return const EnvironmentConfig._(
      name: EnvironmentType.staging,
      baseUrl: base,
      hubUrl: '$base/communityHub',
      aiServiceBaseUrl: 'https://quiz.geniusaipro.online',
      logLevel: LogLevel.info,
      enableCrashReporting: false,
    );
  }

  factory EnvironmentConfig.production() {
    const base = 'https://prod-mh.runasp.net';
    return EnvironmentConfig._(
      name: EnvironmentType.production,
      baseUrl: base,
      hubUrl: '$base/communityHub',
      aiServiceBaseUrl: 'https://quiz.geniusaipro.online',
      logLevel: LogLevel.error,
      enableCrashReporting: true,
    );
  }

  bool get isProduction => name == EnvironmentType.production;
}
