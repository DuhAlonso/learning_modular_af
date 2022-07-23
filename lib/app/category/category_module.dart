import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/category/category_page.dart';
import 'package:modular/app/model/category_controller.dart';
import 'package:modular/app/model/price_model.dart';
import 'package:modular/app/product/product_module.dart';

class CategoryModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        //* Export = true consigo importar esse bind em outros Modulos
        Bind.lazySingleton((i) => PriceModel(), export: true),
        // Bind(
        //   (i) => CategoryController(),
        // ! isLazy define se a classe vai ser inicializada junto com o modulo
        // ! ou somente quando instanciar ela.
        //   isLazy: false,
        //!   isSingleton define se vai criar varias instancias ou vai ser singleton
        //   isSingleton: true,
        // ),
        //* Boa prática criar o construtor nomeado, neste caso
        //* é a mesma coisa que o código a cima
        Bind.singleton(
          (i) => CategoryController(
            // priceModel: Modular.get<PriceModel>(),
            // priceModel: i.get<PriceModel>(), // Injectable
            // priceModel: i.get(),
            priceModel: i(), //call
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoryPage(
            category: args.data,
          ),
        ),
        ModuleRoute('/product', module: ProductModule())
      ];
}
