import 'package:flutter/material.dart';
import 'package:foodie_app/models/recipe.dart';
import 'package:foodie_app/widgets/recipe_detail_item.dart';

class RecipeDetailItems extends StatelessWidget {
  const RecipeDetailItems({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  String _getVegan(bool check) {
    return check ? 'For Vegan' : 'Not For Vegan';
  }

  String _getLactose(bool check) {
    return check ? 'Is Lactose Free' : 'Not Lactose Free';
  }

  String _getGluten(bool check) {
    return check ? 'Is Gluten Free' : 'Not Gluten Free';
  }

  String _getVegetarian(bool check) {
    return check ? 'For Vegetarian' : 'Not For Vegetarian';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 290,
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      child: GridView(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 16,
          right: 16,
        ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: [
          RecipeDetailItem(
            title: _getVegan(recipe.isVegan),
            imageUrl: "assets/images/vegan-food.jpeg",
          ),
          RecipeDetailItem(
            title: _getLactose(recipe.isLactoseFree),
            imageUrl: "assets/images/lactose-food.jpg",
          ),
          RecipeDetailItem(
            title: _getGluten(recipe.isGlutenFree),
            imageUrl: "assets/images/gluten-food.jpg",
          ),
          RecipeDetailItem(
            title: _getVegetarian(recipe.isVegetarian),
            imageUrl: "assets/images/vegetarian-food.jpg",
          ),
        ],
      ),
    );
  }
}
