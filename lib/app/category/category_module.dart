import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/category/category_page.dart';
import 'package:modular/app/product/product_module.dart';

class CategoryModule extends Module {
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
