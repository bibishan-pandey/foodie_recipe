import 'package:flutter/material.dart';
import 'package:foodie_app/screens/category_detail.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem({
    Key key,
    this.title,
    this.color,
  }) : super(key: key);

  void _navigateToCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext buildContext) {
        return CategoryDetailScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(3),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color.withOpacity(0.8),
                color.withOpacity(0.9),
                color.withOpacity(1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
      ),
    );
  }
}
