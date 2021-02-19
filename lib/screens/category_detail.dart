import 'package:flutter/material.dart';

class CategoryDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArguments =
        ModalRoute.of(context).settings.arguments;
    final id = routeArguments['id'];
    final title = routeArguments['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Category Detail (Recipe) $title $id'),
      ),
    );
  }
}
