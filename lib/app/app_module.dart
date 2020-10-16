import 'package:router_test/app/modules/compra/compra_module.dart';
import 'package:router_test/app/modules/produtos/produtos_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:router_test/app/app_widget.dart';
import 'package:router_test/app/modules/home/home_module.dart';

import 'modules/home/home_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: HomeModule()),
        ModularRouter('/home', child: (_, args) => HomePage()),
        ModularRouter('/compra', module: CompraModule()),
        ModularRouter('/produtos', module: ProdutosModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
