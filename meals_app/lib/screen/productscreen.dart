import 'package:flutter/material.dart';

import '../Widgets/singleproduct.dart';
import '../data/data.dart';
import '../models/meal.dart';

class ProductScreen extends StatelessWidget {
  static const route = '/product';
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Meal> aviliableMeals;
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    aviliableMeals = meals.where((value) {
      return (value.categories.contains(routeArgs['id']));
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['id']!),
      ),
      body: ListView(
        children: [
          ...aviliableMeals.map((value) {
            return (SingleProduct(
              title: value.title,
              image: value.imageUrl,
              duration: value.duration,
              affordable: value.affordability,
              simple: value.complexity,
            ));
          })
        ],
      ),
    );
  }
}
