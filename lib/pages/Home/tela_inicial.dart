import 'package:Pizzaria/core/app_imagens.dart';
import 'package:flutter/material.dart';

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
                  height: 50,
                  width: 150,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        Color(0xFFcb161b),
                        Color.fromARGB(255, 90, 3, 6),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            child: Center(
                          widthFactor:
                              1.3, //Life is made of difficulties, make them easier :)
                          child: Text(
                            'Inserir Item'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 2,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    width: 150,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0xFFcb161b),
                          Color.fromARGB(255, 90, 3, 6),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              child: Center(
                            widthFactor:
                                1.2, //Life is made of difficulties, make them easier :)
                            child: Text(
                              'Ver Detalhes'.toUpperCase(),
                              style: TextStyle(
                                  height: 2,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                        ],
                      ),
                      onPressed: () {},
                    ))
              ]))
        ]));
  }
}
