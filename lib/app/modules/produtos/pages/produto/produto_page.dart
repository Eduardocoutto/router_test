import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'produto_controller.dart';

class ProdutoPage extends StatefulWidget {
  final String title;
  const ProdutoPage({Key key, this.title = "Produto"}) : super(key: key);

  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends ModularState<ProdutoPage, ProdutoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + DateTime.now().second.toString()),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("ABRIR PRODUTO PAGE NOVAMENTE"),
            onPressed: () {
              // Modular.to.push(MaterialPageRoute(
              //     settings: RouteSettings(name: '/produto'),
              //     builder: (BuildContext context) => ProdutoPage()));
              Modular.link.pushNamed('/produto');
            },
          ),
          RaisedButton(
            child: Text("FECHAR PRODUTOS/ABRIR NOVO"),
            onPressed: () {
              Modular.link.pushNamedAndRemoveUntil(
                  '/produto', ModalRoute.withName('//produtos'));
            },
          ),
          RaisedButton(
            child: Text("/produtos"),
            onPressed: () {
              Modular.link.popUntil(ModalRoute.withName('/produtos'));
            },
          ),
          RaisedButton(
            child: Text("ABRIR COMPRA/FECHAR OUTRAS PAG"),
            onPressed: () {
              Modular.to
                  .pushNamedAndRemoveUntil('/compra', ModalRoute.withName('/'));
            },
          )
        ],
      ),
    );
  }
}
