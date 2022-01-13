import 'package:flutter/material.dart';
import 'package:meals_app/screen/favourite_screen.dart';

import 'category_Screen.dart';

class TabScreen extends StatefulWidget {

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:Scaffold(
      appBar: AppBar(title: const Text('Meal'),bottom:const TabBar(tabs:[
        Tab(
          icon:  Icon(Icons.category),
          text: 'Category',
        ),
        Tab(
          icon:  Icon(Icons.star),
          text: 'Favourite',
        ),
      ],),
      ),
      body: TabBarView(children: [
       const CategoryScreen(),
        FavoriteScreen()
      ]),
    ));
  }
}
