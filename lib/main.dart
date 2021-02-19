import 'package:flutter/material.dart';
import 'package:foodie_app/screens/categories.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // canvasColor: Color.fromRGBO(189, 189, 189, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(33, 33, 33, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(33, 33, 33, 1),
              ),
            ),
      ),
      home: CategoriesScreen(title: 'Foodie'),
      debugShowCheckedModeBanner: false,
    );
  }
}
