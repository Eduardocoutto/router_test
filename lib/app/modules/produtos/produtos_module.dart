import 'package:router_test/app/modules/produtos/pages/produto/produto_page.dart';

import 'pages/produto/produto_controller.dart';
import 'produtos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'produtos_page.dart';

class ProdutosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ProdutoController,
        $ProdutosController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ProdutosPage()),
        ModularRouter('/produto', child: (_, args) => ProdutoPage()),
      ];

  static Inject get to => Inject<ProdutosModule>.of();
}
