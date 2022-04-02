import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_colors.dart';
import 'package:lanchonete/core/theme.dart';
import 'package:lanchonete/pages/Home/home_page.dart';
import 'package:lanchonete/pages/Login/login_page.dart';
import 'package:lanchonete/pages/Login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizzaria',
      theme: tema,
      home: LoginPage(),
    );
  }
}
