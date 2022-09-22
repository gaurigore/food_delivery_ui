import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/ui/screens/cart/Cart.dart';
import 'package:food_delivery_app/ui/screens/history/History.dart';
import 'package:food_delivery_app/ui/screens/home/HomeScreen.dart';
import 'package:food_delivery_app/ui/screens/like/Liked.dart';
import 'package:food_delivery_app/ui/screens/profile/UserProfile.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentIndex = 0;
  double xOffset = 0;
  double yOffset = 0;
  double borderRadius = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  void borderRadius1(widget) {
    BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25)),
    );
  }

  final screens = [
    HomeScreen(),
    Liked(),
    UserProfile(),
    History(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: (250)),
      transform: Matrix4.translationValues(
        xOffset,
        yOffset,
        0,
      )
        ..scale((scaleFactor)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: ColorConfig.all_screen_background_color,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.white24,
                offset: Offset.fromDirection(2, 52),
                blurRadius: 4,
              )
            ]),
      child: Scaffold(
        //backgroundColor: ColorConfig.all_screen_background_color,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Food Delivery"),
          leading: isDrawerOpen
              ? IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  xOffset = 0;
                  yOffset = 0;
                  borderRadius = 0;
                  scaleFactor = 1;
                  isDrawerOpen = false;
                });
              })
              : IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                xOffset = 250;
                yOffset = 80;
                borderRadius = 32;
                scaleFactor = 0.8;
                isDrawerOpen = true;
                borderRadius1(widget);
              });
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              tooltip: 'Open shopping cart',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
            ),
          ],
        ),
        drawerEnableOpenDragGesture: true,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          selectedItemColor: Color(0xFFFA4A0C),
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Color(0xFFF15019)),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded), label: "like"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_outlined), label: "history"),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                //margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: ColorConfig.all_screen_background_color,
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(borderRadius),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white24,
                        offset: Offset.fromDirection(2, 52),
                        blurRadius: 4,
                      )
                    ]),
                child: Container(
                  child: screens[currentIndex],
                ),
              ),
            ),
          ],
        ),
      ),
    )
    ,
    );
  }
}
