import 'package:flutter/material.dart';
import 'package:foodie_app/screens/category_detail.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final Color color;

  const CategoryItem({
    Key key,
    @required this.id,
    @required this.title,
    @required this.color,
    this.imageUrl,
  }) : super(key: key);

  void _navigateToCategoryDetail(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryDetailScreen.routeName,
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
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 5,
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 10,
                top: 10,
                left: 16,
                right: 26,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
