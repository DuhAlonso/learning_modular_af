import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/product/product_page.dart';
import 'package:modular/app/product/product_page_2.dart';

class ProductModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/:name',
      child: (context, args) => ProductPage(
        name: args.params['name'],
      ),
    ),
    ChildRoute(
      '/xyz',
      child: (context, args) => ProductPage2(
        name: args.queryParams['name'],
      ),
    ),
  ];
}
