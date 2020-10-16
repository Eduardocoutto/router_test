import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../home/home_page.dart';
import 'compra_controller.dart';

class CompraPage extends StatefulWidget {
  final String title;
  const CompraPage({Key key, this.title = "Compra"}) : super(key: key);

  @override
  _CompraPageState createState() => _CompraPageState();
}

class _CompraPageState extends ModularState<CompraPage, CompraController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("ABRIR PRODUTO"),
            onPressed: () {
              Modular.to.pushNamedAndRemoveUntil(
                  '/produtos/produto', ModalRoute.withName('/'));
              Modular.to.pushNamed('/produtos');
            },
          ),
          RaisedButton(
            child: Text("ABRIR COMPRA"),
            onPressed: () {
              Modular.to.pushNamed('/compra');
            },
          )
        ],
      ),
    );
  }
}
