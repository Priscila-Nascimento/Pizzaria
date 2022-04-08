import 'package:Pizzaria/core/app_textStyles.dart';
import 'package:flutter/material.dart';

//Não contém API no projeto para que seja utilizada para verificação do consumo das mesas.
class ConsumoPage extends StatelessWidget {
  final int numeroMesa;
  const ConsumoPage({
    Key? key,
    required this.numeroMesa,
  }) : super(key: key);

  _buildList() {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Coca Cola',
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Text(
              'R\$ 5.00',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          );
        });
  }

  _buildButton() {
    return Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Container(
          width: 200,
          height: 50,
          decoration: const ShapeDecoration(
            shape: StadiumBorder(),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 1],
              colors: [
                Color(0xFFcb161b),
                Color.fromARGB(255, 90, 3, 6),
              ],
            ),
          ),
          child: MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: const StadiumBorder(),
            child: const Text(
              'ENCERRAR',
              style: AppTextStyles.ButtonWhite,
            ),
            onPressed: () {},
          ),
        ));
  }

  _buildTotal() {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Total: R\$10',
            style: AppTextStyles.texto,
          )
        ],
      ),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Expanded(flex: 5, child: _buildList()),
        Expanded(flex: 1, child: _buildTotal()),
        _buildButton(),
        SizedBox(
          height: 30,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Text('Produtos | Mesa ${numeroMesa.toString().padLeft(2, '0')} '),
      ),
      body: _buildBody(),
    );
  }
}
