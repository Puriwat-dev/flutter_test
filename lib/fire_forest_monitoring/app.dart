import 'package:fire_forest_monitoring_system/fire_forest_monitoring/view/map_page.dart';
import 'package:fire_forest_monitoring_system/fire_forest_monitoring/view/loginpage.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      title: 'Gistda',
      home: const LoginPage(),
      theme: ThemeData(
          primaryColor: const Color(0xFFEF5350),
          scaffoldBackgroundColor: Colors.white),
    );
  }
}
