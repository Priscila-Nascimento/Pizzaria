// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Pizzaria/core/app_imagens.dart';
import 'package:Pizzaria/core/app_textStyles.dart';
import 'package:flutter/material.dart';
//Não contém API no projeto para que seja utilizada para verificação dos itens para serem consumidos, sendo assim foi feito um demonstrativo de como a pagina irá se comportar.

class CategoriasPage extends StatelessWidget {
  final int numeroMesa;
  const CategoriasPage({
    Key? key,
    required this.numeroMesa,
  }) : super(key: key);
  _buildCard(String title, String image) {
    return Stack(children: [
      Container(
        width: 155,
        height: 155,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 2.0,
                spreadRadius: 1,
              )
            ],
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
      ),
      Positioned(
        bottom: 33,
        left: 5,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Center(
                  child: Text(
                title,
                style: AppTextStyles.textoWhite,
              )),
            )),
      )
    ]);
  }

  _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: <Widget>[
          _buildCard('BEBIDAS', AppImagens.bebida),
          _buildCard('PIZZAS', AppImagens.pizza),
          _buildCard('CARNES', AppImagens.carnes),
          _buildCard('MASSAS', AppImagens.massas),
          _buildCard('PORÇÕES', AppImagens.porcoes),
          _buildCard('COMBOS', AppImagens.combos),
          _buildCard('VEGANO', AppImagens.vegano),
          _buildCard('SOBREMESAS', AppImagens.sobremesa),
          _buildCard('LANCHES', AppImagens.lanches),
          _buildCard('SALGADOS', AppImagens.salgados),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Text('Categorias | Mesa ${numeroMesa.toString().padLeft(2, '0')}'),
      ),
      body: _buildBody(),
    );
  }
}
