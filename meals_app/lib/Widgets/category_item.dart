import 'package:flutter/material.dart';
import 'package:meals_app/screen/productscreen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItem(
      {required this.id, required this.title, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String hello = '';
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ProductScreen.route, arguments: {
            "id": id,
          });
        },
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text(title, style: TextStyle(fontSize: 16)),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[color.withOpacity(0.7), color],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
