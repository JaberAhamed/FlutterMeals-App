import 'package:flutter/material.dart';
import 'package:meals_app/categoryscreen/category_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,

        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
          bodyText2: const TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
          subtitle1: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )

      ),
      home: const CategoryScreen(),
    );
  }
}

