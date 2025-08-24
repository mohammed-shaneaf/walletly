import 'package:flutter/material.dart';
import 'package:walletly/core/config/app_config.dart';

class MyApp extends StatelessWidget {
  final AppConfig config;
  const MyApp({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config.appName,
      debugShowCheckedModeBanner: config.enableLogging,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: Text(config.appName)),
        body: Center(
          child: Text(
            'Running in ${config.flavor.name.toUpperCase()} mode',
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
