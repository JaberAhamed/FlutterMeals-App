import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screen/category_meal_detials_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  const MealItem(
      {
        required this.id,
        required this.title,
      required this.imgUrl,
      required this.duration,
      required this.complexity,
      required this.affordability});

  String get getComplexity{
    switch(complexity){
      case Complexity.Simple:
        return "Sample";
      case Complexity.Challenging:
        return "Chanllenging";
      case Complexity.Hard:
      return "Hard";
      default:
        return "Unknown";
    }
  }

  String get getApportable{
    switch(affordability){
      case Affordability.Affordable:
        return "Affordable";
      case Affordability.Luxurious:
        return "Luxurious";
      case Affordability.Pricey:
        return "Pricey";
      default:
        return "Unknown";
    }
  }
  void foodDetail(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryMealDetails.RouteName,arguments: id );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        foodDetail(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imgUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    right: 20,
                    bottom: 40,
                    child: Container(
                        width: 220,
                        color: Colors.black54,
                        padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )))
              ],
            ),
            Padding(
              
              padding: const EdgeInsets.all(20.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                      Row(
                        children: [
                          const Icon(Icons.schedule),
                          const SizedBox(width: 4,),
                          FittedBox(child: Text('$duration min',style: const TextStyle(color: Colors.black,fontSize: 13.0),))
                        ],
                      ),

                  Row(
                      children: [
                        const Icon(Icons.work),
                        const SizedBox(width: 4,),
                        FittedBox(child: Text(getComplexity,style: const TextStyle(color: Colors.black,fontSize: 13.0)))

                      ],
                    ),


                  Row(
                      children: [
                        const Icon(Icons.attach_money),
                        const SizedBox(width: 4,),
                        FittedBox(child: Text(getApportable,style: const TextStyle(color: Colors.black,fontSize: 13.0)))

                      ],
                    ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
