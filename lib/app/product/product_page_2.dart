import 'package:flutter/material.dart';

class ProductPage2 extends StatelessWidget {
  final String? name;
  const ProductPage2({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            // child: Text(Modular.args.params['name'] ?? 'Nome não enviado'),
            child: Text(name ?? 'Nome não enviado'),
          ),
        ],
      ),
    );
  }
}
