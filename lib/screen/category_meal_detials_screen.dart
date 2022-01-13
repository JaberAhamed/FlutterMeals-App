

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/utils/dummy_data.dart';

class CategoryMealDetails extends StatelessWidget {
  static const RouteName = "/category_mealdetails";

  Widget buildSectionTitle(BuildContext context, String title,MediaQueryData mediaQueryData) {
    return Container(
      height: mediaQueryData.size.height * 0.05,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  Widget buildSectionContent(BuildContext context, Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 200,
        width: 300,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final mediaQuery = MediaQuery.of(context);
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
        appBar: AppBar(title: Text('${selectedMeal.title}')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height:MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectionTitle(context, "Ingredients",mediaQuery),
              buildSectionContent(
                context,
                ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        child: Text(
                          selectedMeal.ingredients[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
              buildSectionTitle(context, "Step",mediaQuery),

              buildSectionContent(
                context,
                ListView.builder(
                  itemBuilder: (ctx, index)=> Column(
                    children: [
                      ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${index+1}'),
                      ),
                        title: Text(selectedMeal.steps[index],style: TextStyle(color: Colors.black,fontSize: 14),),

                      ),
                      Divider(),
                    ],
                  ),

                  itemCount: selectedMeal.steps.length,
                ),
              ),
            ],
          ),
        ));
  }
}
