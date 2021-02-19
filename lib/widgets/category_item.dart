import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({
    Key key,
    @required this.id,
    @required this.title,
    @required this.color,
  }) : super(key: key);

  void _navigateToCategoryDetail(BuildContext context) {
    Navigator.of(context).pushNamed(
      'category-detail',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToCategoryDetail(context),
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
