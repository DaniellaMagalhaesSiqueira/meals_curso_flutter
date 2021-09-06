import 'package:flutter/material.dart';
import '/models/meal.dart';
import 'package:meals/components/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  List<Meal> favoriteMeals;

  FavoriteScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text("Nenhuma Refeição foi marcada como Favorita"),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
