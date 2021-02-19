import 'package:flutter/material.dart';

class CategoryDetailScreen extends StatelessWidget {
  final String title;

  const CategoryDetailScreen({Key key, this.title = 'Category Detail'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Category Detail (Recipe)'),
      ),
    );
  }
}
