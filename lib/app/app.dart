import 'package:doctor_appoinment_app/app/theme.dart';
import 'package:flutter/material.dart';

import '../Screen/dashboad.dart';
import '../Screen/login_page.dart';
import '../Screen/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accesories Store',
      debugShowCheckedModeBanner: false,
      theme: getApplicationThemeData(),
      initialRoute: '/login',
      routes: {
        '/login_page': (context) => const LoginPage(),
        '/register_page': (context) => const RegisterScreen(),
        '/': (context) => const DashboardScreen(),
      },
    );
  }
}