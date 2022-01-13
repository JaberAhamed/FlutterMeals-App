import 'package:flutter/material.dart';
import 'package:meals_app/utils/dummy_data.dart';
import 'package:meals_app/widgets/mealCatItem.dart';

class CategoryMealScreen extends StatelessWidget {
  static const ROUTEMEALSCREEN = '/category-meals';
/*  final String id;
  final String title;

  const CategoryMealScreen({Key? key,required this.id,required this.title}) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    final routArg = ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final title = routArg['title'];
    final catId = routArg['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(catId) ).toList();

    return Scaffold(
      appBar: AppBar(title:  Text(title!),),
      body: ListView.builder(itemBuilder:(ctx,index){
        return MealItem(id: categoryMeals[index].id,title: categoryMeals[index].title,imgUrl: categoryMeals[index].imageUrl,duration: categoryMeals[index].duration,
          complexity: categoryMeals[index].complexity,affordability: categoryMeals[index].affordability,);
      },
        itemCount: categoryMeals.length,),
    );
  }
}
