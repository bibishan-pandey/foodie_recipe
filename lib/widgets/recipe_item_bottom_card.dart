import 'package:flutter/material.dart';

class RecipeItemInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const RecipeItemInfo({
    Key key,
    this.icon,
    this.text,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 20,
          color: color,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
          ),
        ),
      ],
    );
  }
}
