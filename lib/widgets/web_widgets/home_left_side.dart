import 'package:flutter/material.dart';


class HomeLeftSide extends StatefulWidget {
  const HomeLeftSide({Key? key}) : super(key: key);

  @override
  _HomeLeftSideState createState() => _HomeLeftSideState();
}

class _HomeLeftSideState extends State<HomeLeftSide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .25,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      //width: 100,
      child: ListView(
        children: [
          shortcutItemWithImage(
              urlImage:
              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              text: 'Mostafa Goha'),
          shortcutsBuildItem(
            icon: Icons.people,
            color: Colors.green,
            text: 'Friends',
          ),
          shortcutsBuildItem(
            icon: Icons.bookmark,
            color: Colors.purple,
            text: 'Saved',
          ),
          shortcutsBuildItem(
            icon: Icons.flag,
            color: Colors.deepOrangeAccent,
            text: 'Pages',
          ),
          shortcutsBuildItem(
            icon: Icons.group_work_rounded,
            color: Colors.blueAccent,
            text: 'Groups',
          ),
          shortcutsBuildItem(
            icon: Icons.shopping_bag,
            color: Colors.indigo,
            text: 'Marketplace',
          ),
          shortcutsBuildItem(
              icon: Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
              text: 'See More',
              bgColor: Colors.black12),
          Container(
            height: 1.5,
            width: MediaQuery.of(context).size.width * .8,
            margin: const EdgeInsets.only(
                top: 20, bottom: 20, right: 120),
            color: Colors.grey.withOpacity(0.7),
          ),
          const Text(
            'Your Shortcut',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          shortcutItemWithImage(
              urlImage:
              'https://images.pexels.com/photos/450059/pexels-photo-450059.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              text: 'Group Name'),
          shortcutItemWithImage(
              urlImage:
              'https://images.pexels.com/photos/450059/pexels-photo-450059.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              text: 'Group Name'),
          shortcutItemWithImage(
              urlImage:
              'https://images.pexels.com/photos/450059/pexels-photo-450059.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              text: 'Group Name'),
          shortcutItemWithImage(
              urlImage:
              'https://images.pexels.com/photos/450059/pexels-photo-450059.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              text: 'Group Name'),
          shortcutItemWithImage(
              urlImage:
              'https://images.pexels.com/photos/450059/pexels-photo-450059.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              text: 'Group Name'),
        ],
      ),
    );
  }
  Widget shortcutItemWithImage({
    required String urlImage,
    required String text,
  }) =>
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      urlImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Widget shortcutsBuildItem({
    required String text,
    required IconData icon,
    required Color color,
    Color? bgColor,
  }) =>
      Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                icon,
                color: color,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );
}
