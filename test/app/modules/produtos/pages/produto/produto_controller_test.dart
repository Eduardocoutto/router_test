import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:router_test/app/modules/produtos/pages/produto/produto_controller.dart';
import 'package:router_test/app/modules/produtos/produtos_module.dart';

void main() {
  initModule(ProdutosModule());
  // ProdutoController produto;
  //
  setUp(() {
    //     produto = ProdutosModule.to.get<ProdutoController>();
  });

  group('ProdutoController Test', () {
    //   test("First Test", () {
    //     expect(produto, isInstanceOf<ProdutoController>());
    //   });

    //   test("Set Value", () {
    //     expect(produto.value, equals(0));
    //     produto.increment();
    //     expect(produto.value, equals(1));
    //   });
  });
}
