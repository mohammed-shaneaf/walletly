import 'package:flutter/material.dart';
import 'package:walletly/core/config/app_config.dart';
import 'package:walletly/core/config/my_app.dart';

void main() {
  const cfg = AppConfig(
    appName: 'Walletly',
    flavor: AppFlavor.prod,
    enableLogging: false,
  );
  runApp(MyApp(config: cfg));
}
