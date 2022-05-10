import 'package:flutter/material.dart';

class BuildListTiles extends StatelessWidget {
  final IconData icon;
  final String name;
  const BuildListTiles({required this.icon, required this.name, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          print("Tapped");
        },
        contentPadding: EdgeInsets.fromLTRB(25, 5, 0, 5),
        leading: Icon(
          icon,
          size: 20,
        ),
        title: Text(name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )));
  }
}
