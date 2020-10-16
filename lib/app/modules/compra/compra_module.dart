import 'compra_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'compra_page.dart';

class CompraModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CompraController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => CompraPage()),
      ];

  static Inject get to => Inject<CompraModule>.of();
}
