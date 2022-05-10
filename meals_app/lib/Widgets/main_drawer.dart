import 'package:flutter/material.dart';
import './buildListTile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            alignment: Alignment.bottomRight,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(40),
            child: Text(
              "MEAL APP",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            decoration: BoxDecoration(color: Color.fromARGB(255, 234, 23, 8)),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: const [
                  BuildListTiles(icon: Icons.favorite, name: "Favourites"),
                  BuildListTiles(icon: Icons.settings, name: "Filters"),
                  BuildListTiles(icon: Icons.restaurant, name: "Meals"),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.facebook,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.radar,
                  size: 30,
                  color: Colors.green,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.reddit,
                  size: 30,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
