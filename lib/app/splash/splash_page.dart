import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/category');
                Modular.to.pushNamed('/category', arguments: 'Eduardo Alonso');
              },
              child: const Text('Modulo Categoria'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/category');
                Modular.to.pushNamed(
                  '/category/product/Monitor_LG',
                  arguments: 'Eduardo Alonso',
                );
              },
              child: const Text('Product module dentro de Categoria'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/category');
                Modular.to.pushNamed('/product/iphone');
              },
              child: const Text('Modulo Produto'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/category');
                Modular.to.pushNamed('/product/xyz?name=JBL');
              },
              child: const Text('Produto 02'),
            )
          ],
        ),
      ),
    );
  }
}
