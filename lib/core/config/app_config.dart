enum AppFlavor { dev, staging, prod }

class AppConfig {
  final String appName;
  final AppFlavor flavor;
  final bool enableLogging;

  const AppConfig({
    required this.appName,
    required this.flavor,
    required this.enableLogging,
  });
}
