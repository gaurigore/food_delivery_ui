import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/ui/screens/food_category/Drinks.dart';
import 'package:food_delivery_app/ui/screens/food_category/Foods.dart';
import 'package:food_delivery_app/ui/screens/search/SearchResult.dart';
import 'package:food_delivery_app/ui/screens/food_category/Snacks.dart';

import '../cart/Cart.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.only(left: 16,top: 16),
              child: Text(
                "Delicious",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "food for you",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      //onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Search",
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                      ),
                      onSubmitted: (value) {
                        try {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchResult()),
                          );
                        } catch (e) {
                          print(e);
                        }
                      }),
                ),
              ),
            ),
            DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Expanded(
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: TabBar(
                        automaticIndicatorColorAdjustment: true,
                        isScrollable: true,
                        unselectedLabelColor: Colors.deepOrangeAccent,
                        indicatorColor: Colors.deepOrangeAccent,
                        tabs: [
                          Tab(
                              child: Text("Foods",
                                  style: TextStyle(color: Colors.black))),
                          Tab(
                              child: Text("Drinks",
                                  style: TextStyle(color: Colors.black))),
                          Tab(
                              child: Text("Snacks",
                                  style: TextStyle(color: Colors.black))),
                        ]),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [

                        Foods(),
                        Drinks(),
                        Snacks(),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            //Expanded(child: MyBottomNavigationBar()),
          ]),
    );
  }
}
