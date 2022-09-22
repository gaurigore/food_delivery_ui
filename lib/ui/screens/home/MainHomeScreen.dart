import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/bottom_navigation/MyBottomNavigationBar.dart';
import 'package:food_delivery_app/ui/screens/home/HomeScreen.dart';
import 'package:food_delivery_app/ui/widgets/NavigationDrawerWidget.dart';


class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          NavigationDrawerWidget(),
          MyBottomNavigationBar()
          //HomeScreen()
        ],
      ),
    );
  }
}
