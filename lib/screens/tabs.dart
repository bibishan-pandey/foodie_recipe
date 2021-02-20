import 'package:flutter/material.dart';
import 'package:foodie_app/models/category.dart';
import 'package:foodie_app/models/recipe.dart';
import 'package:foodie_app/screens/categories.dart';
import 'package:foodie_app/screens/favorites.dart';
import 'package:foodie_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<Category> categories;
  final List<Recipe> favoriteRecipes;

  const TabsScreen({
    Key key,
    this.categories,
    this.favoriteRecipes,
  }) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _screens;
  int _selectedScreenIndex = 0;

  @override
  void initState() {
    _screens = [
      {
        'screen': CategoriesScreen(
          categories: widget.categories,
        ),
        'title': "Foodie's Recipe Dashboard",
      },
      {
        'screen': FavoritesScreen(
          favoriteRecipes: widget.favoriteRecipes,
        ),
        'title': "Foodie's Recipe Favorites",
      },
    ];
    super.initState();
  }

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title']),
      ),
      body: _screens[_selectedScreenIndex]['screen'],
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
