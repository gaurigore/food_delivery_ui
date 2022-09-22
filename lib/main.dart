import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/Try.dart';
import 'package:food_delivery_app/ui/screens/start_up_screens/LoginView.dart';
import 'package:food_delivery_app/ui/screens/start_up_screens/GetStartedScreen.dart';
import 'package:food_delivery_app/ui/screens/home/MainHomeScreen.dart';
import 'package:food_delivery_app/ui/screens/bottom_navigation/MyBottomNavigationBar.dart';
import 'package:food_delivery_app/ui/screens/search/SearchResult.dart';
import 'package:food_delivery_app/ui/screens/profile/UserProfile.dart';
import 'package:food_delivery_app/ui/screens/search/Info.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      home:
      GetStartedScreen(),

          //MyBottomNavigationBar(),
      //LoginView(),
    );
  }
}
