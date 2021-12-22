import 'package:flutter/material.dart';
import '/categoryscreen/categoryitem.dart';
import '/utils/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Deaily meal app"),),
      body:GridView(
        children: DUMMY_CATEGORIES
            .map((cat) => CategoryItem(
            title: cat.title,
            color: cat.color))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
