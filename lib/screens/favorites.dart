import 'package:flutter/material.dart';
import 'package:foodie_app/models/recipe.dart';
import 'package:foodie_app/widgets/recipe_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Recipe> favoriteRecipes;

  const FavoritesScreen({Key key, this.favoriteRecipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: favoriteRecipes.isEmpty
          ? Text('No favorite food recipe!')
          : ListView.builder(
              itemCount: favoriteRecipes.length,
              itemBuilder: (builderContext, index) {
                return RecipeItem(
                  id: favoriteRecipes[index].id,
                  title: favoriteRecipes[index].title,
                  imageUrl: favoriteRecipes[index].imageUrl,
                  duration: favoriteRecipes[index].duration,
                  complexity: favoriteRecipes[index].complexity,
                  affordability: favoriteRecipes[index].affordability,
                );
              },
            ),
    );
  }
}
