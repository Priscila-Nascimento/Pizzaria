import 'package:flutter/material.dart';
import 'package:lanchonete/core/app_textStyles.dart';
import 'package:lanchonete/pages/Configura%C3%A7%C3%A3o/config_page.dart';
import 'package:lanchonete/pages/Home/tela_inicial.dart';
import 'package:lanchonete/pages/Itens/itens_page.dart';
import 'package:lanchonete/pages/Mesas/mesas_pages.dart';

enum Paginas { inicio, mesas, itens, configuracao } //NavigationBar

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final _paginas = <Widget>[
    Telainicial(),
    MesasPage(),
    ItensPage(),
    ConfigPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Mesas | Comandas',
        ),
      ),
      body: _paginas.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            _index = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_bar_outlined), label: 'Mesas'),
            BottomNavigationBarItem(
                icon: Icon(Icons.inventory_2), label: 'Itens'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Config'),
          ]),
    );
  }
}
