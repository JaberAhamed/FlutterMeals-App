
import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  final String id;
  final String title;

  const CategoryMealScreen({Key? key,required this.id,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(title),),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
