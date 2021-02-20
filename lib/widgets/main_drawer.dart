import 'package:flutter/material.dart';
import 'package:foodie_app/screens/filters.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildListTileItem({
    @required IconData icon,
    @required String tileName,
    @required Function tapHandler,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        tileName,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 125,
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 75,
              bottom: 16,
              left: 16,
              right: 16,
            ),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              "Foodie's Recipe",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildListTileItem(
            icon: Icons.restaurant,
            tileName: 'Foods',
            tapHandler: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          _buildListTileItem(
            icon: Icons.settings,
            tileName: 'Filters',
            tapHandler: () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
          _buildListTileItem(
            icon: Icons.settings,
            tileName: 'Settings',
            tapHandler: () {},
          ),
        ],
      ),
    );
  }
}
