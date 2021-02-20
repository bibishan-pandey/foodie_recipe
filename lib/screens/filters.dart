import 'package:flutter/material.dart';
import 'package:foodie_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function setFiltersFunc;
  final Map<String, bool> filters;

  FiltersScreen({this.setFiltersFunc, this.filters});

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree;
  bool _lactoseFree;
  bool _vegan;
  bool _vegetarian;

  @override
  void initState() {
    _glutenFree = widget.filters['gluten'];
    _lactoseFree = widget.filters['lactose'];
    _vegan = widget.filters['vegan'];
    _vegetarian = widget.filters['vegetarian'];
    super.initState();
  }

  void _saveFilterState() {
    final _filters = {
      'gluten': _glutenFree,
      'lactose': _lactoseFree,
      'vegan': _vegan,
      'vegetarian': _vegetarian,
    };
    widget.setFiltersFunc(_filters);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 10,
              left: 16,
              right: 16,
            ),
            child: Text(
              'Set your filter settings here',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: Text('Gluten Free'),
                  subtitle: Text('Only include gluten free food recipes'),
                  value: _glutenFree,
                  onChanged: (bool value) {
                    setState(() {
                      _glutenFree = value;
                      _saveFilterState();
                    });
                  },
                ),
                Divider(),
                SwitchListTile(
                  title: Text('Lactose Free'),
                  subtitle: Text('Only include lactose free food recipes'),
                  value: _lactoseFree,
                  onChanged: (bool value) {
                    setState(() {
                      _lactoseFree = value;
                      _saveFilterState();
                    });
                  },
                ),
                Divider(),
                SwitchListTile(
                  title: Text('Vegan Food'),
                  subtitle: Text('Only include vegan food recipes'),
                  value: _vegan,
                  onChanged: (bool value) {
                    setState(() {
                      _vegan = value;
                      _saveFilterState();
                    });
                  },
                ),
                Divider(),
                SwitchListTile(
                  title: Text('Vegetarian Food'),
                  subtitle: Text('Only include vegetarian food recipes'),
                  value: _vegetarian,
                  onChanged: (bool value) {
                    setState(() {
                      _vegetarian = value;
                      _saveFilterState();
                    });
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
