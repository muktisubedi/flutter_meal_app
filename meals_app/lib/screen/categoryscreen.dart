import 'package:flutter/material.dart';
import '../Widgets/category_item.dart';
import '../data/data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 290,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: products
          .map((value) => CategoryItem(
              id: value.id, title: value.title, color: value.color))
          .toList(),
    );
  }
}
