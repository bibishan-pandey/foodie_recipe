import 'package:flutter/material.dart';
import 'package:foodie_app/models/recipe.dart';
import 'package:foodie_app/screens/recipe_detail.dart';
import 'package:foodie_app/widgets/recipe_item_bottom_card.dart';

class RecipeItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final RecipeComplexity complexity;
  final RecipeAffordability affordability;

  RecipeItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  String get _getComplexity {
    return complexity == RecipeComplexity.Simple
        ? 'Simple'
        : complexity == RecipeComplexity.Challenging
            ? 'Challenging'
            : 'Hard';
  }

  String get _getAffordability {
    return affordability == RecipeAffordability.Affordable
        ? 'Affordable'
        : affordability == RecipeAffordability.Pricey
            ? 'Pricey'
            : 'Luxurious';
  }

  void _navigateToRecipeDetail(BuildContext context) {
    Navigator.of(context).pushNamed(
      RecipeDetailScreen.routeName,
      arguments: {
        'id': id,
      },
    ).then((value) {
      print(value);
    });
    // passing the value from one screen to another after popping
    // the screen

    // NOTE: possible as pushNamed returns a Future that executes
    // after the screen has been popped out

    // Usage from recipe_detail.dart floating action button:
    // Navigator.of(context).pop(id);
    // The id part is printed after we click the floating action button
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 10,
        bottom: 10,
      ),
      child: InkWell(
        onTap: () => _navigateToRecipeDetail(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(3),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3),
                      ),
                      child: Image.network(
                        imageUrl,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          return loadingProgress == null
                              ? child
                              : LinearProgressIndicator();
                        },
                      ),
                    ),
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
                        borderRadius: BorderRadius.circular(3),
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
                        )),
                    child: Text(
                      title,
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
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                  top: 20,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RecipeItemInfo(
                      icon: Icons.schedule,
                      text: '${duration.toString()} mins',
                    ),
                    RecipeItemInfo(
                      icon: Icons.play_for_work,
                      text: _getComplexity,
                    ),
                    RecipeItemInfo(
                      icon: Icons.attach_money,
                      text: _getAffordability,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
