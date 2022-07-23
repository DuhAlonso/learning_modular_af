import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/model/category_controller.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({required this.category, Key? key})
      :
        // : category = Modular.args.data,
        super(key: key);

  final String? category;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  var controller = Modular.get<CategoryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.category ?? 'Sem argumentos'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Recupera Bind'),
            )
          ],
        ),
      ),
    );
  }
}
