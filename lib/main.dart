import 'package:flutter/material.dart';
import 'package:flutter_4_beginner_project/core/notifier.dart';
import 'package:flutter_4_beginner_project/pages/home_page.dart';
import 'package:flutter_4_beginner_project/widgets/bottom_nav.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDark, builder:(context, value, child) {
          return  MaterialApp(
      //TODO Remove the debug mode banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: value ? Brightness.dark:Brightness.light,
        useMaterial3: true,
        //? USEMATERIAL3
      ),
      home: BottomNav(),
    );
        },);
  }
}
