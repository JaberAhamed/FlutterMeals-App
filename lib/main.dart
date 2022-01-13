import 'package:flutter/material.dart';
import 'package:meals_app/screen/category_meal_detials_screen.dart';
import 'package:meals_app/screen/tab_screen.dart';
import 'screen/category_Screen.dart';
import 'screen/category_meals_screen.dart';

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
        canvasColor: Colors.white  ,
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
      /*home: const CategoryScreen(),*/
      initialRoute: '/',
      routes:{
        '/':(ctx) =>  TabScreen(),
        CategoryMealScreen.ROUTEMEALSCREEN:(ctx) => CategoryMealScreen(),
        CategoryMealDetails.RouteName:(ctx) => CategoryMealDetails(),
      },
      // on genereated route is work when any route not found the system then onGenerated route will work
     /* onGenerateRoute: (setting){
        return MaterialPageRoute(builder: (ctx) =>  CategoryScreen(),);
      },*/
      /*onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => CategoryScreen(),);
      },*/
    );
  }
}

