import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/category/category_page.dart';

class CategoryModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoryPage(
            category: args.data,
          ),
        ),
      ];
}
