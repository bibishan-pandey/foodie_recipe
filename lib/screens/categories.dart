import 'package:flutter/material.dart';
import 'package:foodie_app/helpers/dummy_data.dart';
import 'package:foodie_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  static const String title = "Foodie's Recipe";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        padding: const EdgeInsets.only(
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
              id: element.id,
              title: element.title,
              imageUrl: element.imageUrl,
              color: element.color,
            );
          }).toList(),
        ],
      ),
    );
  }
}
