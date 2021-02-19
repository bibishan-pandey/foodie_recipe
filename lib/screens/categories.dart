import 'package:flutter/material.dart';
import 'package:foodie_app/helpers/dummy_data.dart';
import 'package:foodie_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final String title;

  const CategoriesScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: GridView(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 16,
            right: 16,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          children: [
            ...DUMMY_CATEGORIES.map((element) {
              return CategoryItem(
                title: element.title,
                color: element.color,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
