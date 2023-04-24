import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories/categories_screen.dart';
import 'package:meals_app/screens/favourites/favourities_screen.dart';
import 'package:meals_app/screens/widgets/drawer.dart';

import '../../models/meal.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key, required this.favMeals});

  final List<Meal> favMeals;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Meals',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 25,
                  color: Colors.white,
                ),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category_outlined),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star_outlined),
                text: "Favorities",
              ),
            ],
          ),
        ),
        drawer: const MainDrawer(),
        body: TabBarView(
          children: <Widget>[
            const CategoriesScreen(),
            FavouritiesScreen(favMeals: widget.favMeals),
          ],
        ),
      ),
    );
  }
}
