import 'package:flutter/material.dart';
import 'package:foodie_app/models/category.dart';

const List<Category> DUMMY_CATEGORIES = const [
  Category(
    id: 'ac49e3c97ee0217ddcaf9560e696c62d',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: '22c6a0e1af4d183ea5026c99af6fc488',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'e3db310890b4c122ec30e69e3ca0fe15',
    title: 'Light & Lovely',
    color: Colors.red,
  ),
  Category(
    id: 'e45b756ff585abbca235c82c2d429a2f',
    title: 'Exotic',
    color: Colors.redAccent,
  ),
  Category(
    id: 'ff4edce518d321425fa1890404a997b9',
    title: 'Breakfast',
    color: Colors.deepOrange,
  ),
  Category(
    id: '1fcccc1625701dd0d1f8897ab14dfa5d',
    title: 'Asian',
    color: Colors.deepOrangeAccent,
  ),
  Category(
    id: 'a191cf1e1abb6cbdf33e16554234dd58',
    title: 'French',
    color: Colors.purple,
  ),
  Category(
    id: 'df52cfa011d22ec8ac85aaa9715c58bf',
    title: 'Summer',
    color: Colors.purpleAccent,
  ),
  Category(
    id: '762eccfcb87913e609ea383620545c43',
    title: 'Italian',
    color: Colors.blue,
  ),
  Category(
    id: '944f8fdc748d1703ac42363bd8432269',
    title: 'Quick & Easy',
    color: Colors.blueAccent,
  ),
];

// Uuid uuid = Uuid();
// Category(
//   id: uuid.v4().toString().split('-').join(),
//   title: title,
// );
