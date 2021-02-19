import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String imageUrl;
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    this.imageUrl,
    this.color = Colors.blue,
  });
}
