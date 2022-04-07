import 'package:flutter/material.dart';
import '../../Componentes/item_widget.dart';

class MesasPage extends StatelessWidget {
  const MesasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 17,
          ),
          children: [
            ItemWidget(status: StatusMesa.ocupada, index: 1, valor: 35.40),
            ItemWidget(status: StatusMesa.livre, index: 2, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 3, valor: 150),
            ItemWidget(status: StatusMesa.livre, index: 4, valor: 0),
            ItemWidget(status: StatusMesa.ocupada, index: 5, valor: 90),
            ItemWidget(status: StatusMesa.ocupada, index: 6, valor: 130),
            ItemWidget(status: StatusMesa.ocupada, index: 7, valor: 35),
            ItemWidget(status: StatusMesa.livre, index: 8, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 9, valor: 150),
            ItemWidget(status: StatusMesa.ocupada, index: 10, valor: 35),
            ItemWidget(status: StatusMesa.livre, index: 11, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 12, valor: 150),
            ItemWidget(status: StatusMesa.livre, index: 13, valor: 0),
            ItemWidget(status: StatusMesa.ocupada, index: 14, valor: 90),
            ItemWidget(status: StatusMesa.ocupada, index: 15, valor: 130),
            ItemWidget(status: StatusMesa.ocupada, index: 16, valor: 35),
            ItemWidget(status: StatusMesa.livre, index: 17, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 18, valor: 150),
          ],
        ),
      ),
    );
  }
}
