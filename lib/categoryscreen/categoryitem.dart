import 'package:flutter/material.dart';
import 'package:meals_app/categoryscreen/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
   final String title;
   final Color color;

   const CategoryItem({required this.title,required this.color});

   void selectCatefory(BuildContext context){
     Navigator.of(context).push(MaterialPageRoute(builder:(_){
       return const CategoryMealScreen();
     }));
   }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCatefory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title,style:Theme.of(context).textTheme.subtitle1,),
        decoration: BoxDecoration(gradient: LinearGradient(
        colors: [color.withOpacity(0.7),color],
        begin:Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
