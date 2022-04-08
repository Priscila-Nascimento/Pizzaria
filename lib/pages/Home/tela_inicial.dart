import 'package:Pizzaria/core/app_imagens.dart';
import 'package:Pizzaria/core/app_textStyles.dart';
import 'package:flutter/material.dart';

//Não contém API no projeto.
class Telainicial extends StatelessWidget {
  const Telainicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 1, left: 40, right: 40),
        color: Colors.white,
        child: ListView(children: <Widget>[
          SizedBox(
            child: Image.asset(AppImagens.logo),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 0),
              child: Column(children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 45,
                  padding:
                      EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.local_pizza,
                        color: Colors.grey,
                      ),
                      hintText: 'Item',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 170,
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
                      'INSERIR ITEM',
                      style: AppTextStyles.ButtonWhite2,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 170,
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
                        'VER DETALHES',
                        style: AppTextStyles.ButtonWhite2,
                      ),
                      onPressed: () {},
                    ))
              ]))
        ]));
  }
}
