import 'package:flutter/material.dart';

class SingleStep extends StatelessWidget {
  final MapEntry<int, String> entry;

  const SingleStep({
    Key key,
    this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 5,
          shadowColor: Theme.of(context).accentColor,
          margin: EdgeInsets.only(
            bottom: 10,
            top: 10,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 10,
            ),
            child: Text(
              'Step ${entry.key + 1}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Text(entry.value),
        ),
        Divider(),
      ],
    );
  }
}
