import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  static const routeName = '/category-detail/recipe-detail';

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArguments =
        ModalRoute.of(context).settings.arguments;
    final id = routeArguments['id'];
    // final title = routeArguments['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Detail'),
      ),
      body: Center(
        child: Text('Recipe Detail $id'),
      ),
    );
  }
}
