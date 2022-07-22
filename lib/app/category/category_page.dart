import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Page'),
      ),
      body: Center(
        child: Text(widget.category ?? 'Sem argumentos'),
      ),
    );
  }
}
