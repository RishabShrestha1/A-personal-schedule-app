import 'package:flutter/material.dart';
import '../Drawer/drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //DrawerHeader
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    width: 2,
                  ),
                ),
                child: Image.asset(
                  'assets/images/namaste.png',
                  width: 100,
                  height: 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //DrawerList
          MyDrawerList(
            title: 'Home',
            icon: Icons.home,
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          MyDrawerList(
            title: 'Exit',
            icon: Icons.info,
            onTap: () {
              Navigator.pushNamed(context, '/intro');
            },
          ),
        ],
      ),
    );
  }
}
