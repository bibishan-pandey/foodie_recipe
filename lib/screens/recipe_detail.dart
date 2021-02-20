import 'package:flutter/material.dart';
import 'package:foodie_app/helpers/dummy_data.dart';
import 'package:foodie_app/widgets/recipe_detail_items.dart';
import 'package:foodie_app/widgets/single_step.dart';

class RecipeDetailScreen extends StatelessWidget {
  static const routeName = '/category-detail/recipe-detail';

  Widget _buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 10,
        left: 16,
        right: 16,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArguments =
        ModalRoute.of(context).settings.arguments;
    final id = routeArguments['id'];

    final recipe = DUMMY_RECIPES.firstWhere((e) => e.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text('${recipe.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: <Widget>[
                  Image.network(
                    recipe.imageUrl,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      return loadingProgress == null
                          ? child
                          : LinearProgressIndicator();
                    },
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 16,
                      right: 16,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(33, 33, 33, 0.8),
                          Color.fromRGBO(33, 33, 33, 0.6),
                          Color.fromRGBO(33, 33, 33, 0.4),
                          Color.fromRGBO(33, 33, 33, 0.2),
                          Color.fromRGBO(33, 33, 33, 0.0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: Text(
                      recipe.title,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
            _buildSectionTitle(
              context,
              'Ingredients (${recipe.ingredients.length})',
            ),
            Divider(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...recipe.ingredients.map((ingredient) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      elevation: 5,
                      shadowColor: Theme.of(context).accentColor,
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          ingredient,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    );
                  }).toList(),
                  Divider(),
                ],
              ),
            ),
            _buildSectionTitle(
              context,
              'Steps',
            ),
            Divider(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...recipe.steps.asMap().entries.map((entry) {
                    return SingleStep(entry: entry);
                  }).toList(),
                ],
              ),
            ),
            _buildSectionTitle(context, 'Food Type'),
            Divider(),
            RecipeDetailItems(recipe: recipe),
          ],
        ),
      ),
    );
  }
}
