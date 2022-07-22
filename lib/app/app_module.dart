import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/category/category_module.dart';
import 'package:modular/app/splash/splash_page.dart';

class AppModule extends Module {
  //Dependencias
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute('/category', module: CategoryModule()),
      ];
}
