import 'package:flutter/material.dart';
import 'package:lanchonete/Componentes/item_widget.dart';

class MesasPage extends StatelessWidget {
  const MesasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 19,
            crossAxisSpacing: 15,
          ),
          children: [
            ItemWidget(status: StatusMesa.ocupada, index: 1, valor: 35),
            ItemWidget(status: StatusMesa.livre, index: 2, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 3, valor: 150),
            ItemWidget(status: StatusMesa.livre, index: 4, valor: 0),
            ItemWidget(status: StatusMesa.ocupada, index: 5, valor: 90),
            ItemWidget(status: StatusMesa.ocupada, index: 6, valor: 130),
            ItemWidget(status: StatusMesa.ocupada, index: 1, valor: 35),
            ItemWidget(status: StatusMesa.livre, index: 2, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 3, valor: 150),
            ItemWidget(status: StatusMesa.livre, index: 4, valor: 0),
            ItemWidget(status: StatusMesa.ocupada, index: 5, valor: 90),
            ItemWidget(status: StatusMesa.ocupada, index: 6, valor: 130),
            ItemWidget(status: StatusMesa.ocupada, index: 1, valor: 35),
            ItemWidget(status: StatusMesa.livre, index: 2, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 3, valor: 150),
            ItemWidget(status: StatusMesa.livre, index: 4, valor: 0),
            ItemWidget(status: StatusMesa.ocupada, index: 5, valor: 90),
            ItemWidget(status: StatusMesa.ocupada, index: 6, valor: 130),
            ItemWidget(status: StatusMesa.ocupada, index: 1, valor: 35),
            ItemWidget(status: StatusMesa.livre, index: 2, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 3, valor: 150),
            ItemWidget(status: StatusMesa.livre, index: 4, valor: 0),
            ItemWidget(status: StatusMesa.ocupada, index: 5, valor: 90),
            ItemWidget(status: StatusMesa.ocupada, index: 6, valor: 130),
          ],
        ),
      ),
    );
  }
}
