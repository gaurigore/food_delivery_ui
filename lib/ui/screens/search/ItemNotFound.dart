import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';

class ItemNotFound extends StatelessWidget {
  // const ItemNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offeres And Promo"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      body: Container(
        color: ColorConfig.backgroundColor2,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 50,),
              Center(
                  child:
                      Icon(Icons.search, size: 150, color: Colors.grey.shade300)),
              SizedBox(
                height: 10,
              ),

              Text("Item Not Found",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Try searching  item with  ",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text("a different keyword",
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
