import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meals_app/screen/productscreen.dart';
import 'package:meals_app/screen/whole_category.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      // MyApp() = Display list of categories of meal and it is main screen too.// Whole_Category
      '/': (ctx) => MyApp(),

      ProductScreen.route: (ctx) => ProductScreen()
    },
    debugShowCheckedModeBanner: false,
    title: 'Meal_App',
  ));
}
