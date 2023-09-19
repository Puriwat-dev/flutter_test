import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      backgroundColor: Colors.white,
      indicatorColor: Colors.transparent,
      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.map, color: Colors.blue),
          icon: Icon(
            Icons.map,
          ),
          label: 'Map',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.warning, color: Colors.blue),
          icon: Icon(Icons.warning),
          label: 'Report',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.notifications, color: Colors.blue),
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.settings, color: Colors.blue),
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),
      ],
    );
  }
}