import 'package:flutter/material.dart';
import 'package:foodie_app/helpers/dummy_data.dart';
import 'package:foodie_app/widgets/recipe_item.dart';

class CategoryDetailScreen extends StatelessWidget {
  static const routeName = '/category-detail';

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArguments =
        ModalRoute.of(context).settings.arguments;
    final id = routeArguments['id'];
    final title = routeArguments['title'];

    final categoryRecipes = DUMMY_RECIPES
        .where((element) => element.categories.contains(id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoryRecipes.length,
          itemBuilder: (builderContext, index) {
            return RecipeItem(
              id: categoryRecipes[index].id,
              title: categoryRecipes[index].title,
              imageUrl: categoryRecipes[index].imageUrl,
              duration: categoryRecipes[index].duration,
              complexity: categoryRecipes[index].complexity,
              affordability: categoryRecipes[index].affordability,
            );
          },
        ),
      ),
    );
  }
}
