
import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/history/History.dart';
import 'package:food_delivery_app/ui/screens/search/SearchResult.dart';
import 'package:food_delivery_app/ui/widgets/NavigationDrawerWidget.dart';


class Try extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration:Duration(milliseconds: 250),
    child: Stack(
      children: [
        NavigationDrawerWidget(),
        Scaffold(
        body: Container(

          color: Colors.red,
          child:  Column(
            children: [
              SearchResult(),
            ] ),),
      ),

    ]),);
  }
}
