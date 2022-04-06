import 'package:Pizzaria/Categorias/categorias_page.dart';
import 'package:Pizzaria/core/theme.dart';
import 'package:Pizzaria/pages/Home/home_page.dart';
import 'package:Pizzaria/pages/Login/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizzaria',
      theme: tema,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/categorias': (context) => CategoriasPage(
              numeroMesa: ModalRoute.of(context)!.settings.arguments as int,
            ),
      },
    );
  }
}
