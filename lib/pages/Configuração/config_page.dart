import 'package:Pizzaria/core/app_textStyles.dart';
import 'package:flutter/material.dart';

//Não contém API no projeto para que seja utilizado inserção do servidor.

class ConfigPage extends StatelessWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.cable_outlined,
              color: Colors.grey,
            ),
            labelText: 'Servidor',
            hintText: 'informe o IP do Servidor',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
