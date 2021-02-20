import 'package:flutter/material.dart';
import 'package:foodie_app/screens/category_detail.dart';
import 'package:foodie_app/screens/error.dart';
import 'package:foodie_app/screens/filters.dart';
import 'package:foodie_app/screens/recipe_detail.dart';
import 'package:foodie_app/screens/tabs.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  static const title = "Foodie's Recipe";

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('assets/images/hamburger.jpg'), context);
    precacheImage(AssetImage('assets/images/german-food.jpg'), context);
    precacheImage(AssetImage('assets/images/light-lovely.jpeg'), context);
    precacheImage(AssetImage('assets/images/exotic-food.png'), context);
    precacheImage(AssetImage('assets/images/breakfast.jpeg'), context);
    precacheImage(AssetImage('assets/images/asian-food.jpg'), context);
    precacheImage(AssetImage('assets/images/french-food.jpg'), context);
    precacheImage(AssetImage('assets/images/summer-food.jpg'), context);
    precacheImage(AssetImage('assets/images/italian-food.jpg'), context);
    precacheImage(AssetImage('assets/images/quick-easy-food.jpg'), context);

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        // primarySwatch: Colors.blue,
        // accentColor: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // canvasColor: Color.fromRGBO(189, 189, 189, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(33, 33, 33, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(33, 33, 33, 1),
              ),
            ),
      ),
      home: TabsScreen(),
      // initialRoute: '/',
      routes: {
        // '/': (_) => TabsScreen(),
        CategoryDetailScreen.routeName: (_) => CategoryDetailScreen(),
        RecipeDetailScreen.routeName: (_) => RecipeDetailScreen(),
        FiltersScreen.routeName: (_) => FiltersScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (ctx) => ErrorScreen());
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (ctx) => ErrorScreen());
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
