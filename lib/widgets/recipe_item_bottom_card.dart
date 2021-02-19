import 'package:flutter/material.dart';

class RecipeItemInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  const RecipeItemInfo({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 20,
          color: Theme.of(context).textTheme.bodyText1.color,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
        ),
      ],
    );
  }
}
