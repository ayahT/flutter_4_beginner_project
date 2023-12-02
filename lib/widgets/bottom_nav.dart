import 'package:flutter/material.dart';
import 'package:flutter_4_beginner_project/pages/Info_page.dart';
import 'package:flutter_4_beginner_project/pages/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> pages = [HomePage(),InfoPage()];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: const Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Info"),
        ],
        selectedIndex: current,
        onDestinationSelected: (int value) {
          setState(() {
            current = value;
          });
        },
      ),
    );
  }
}
