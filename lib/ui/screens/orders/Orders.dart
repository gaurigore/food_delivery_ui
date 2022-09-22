import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/config/color.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConfig.backgroundColor2,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Orders",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: ColorConfig.backgroundColor2,
          elevation: 0,
        ),
        body: Container(
          color: ColorConfig.backgroundColor2,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 77,
                ),
                Center(
                    child: Icon(Icons.shopping_cart_outlined,
                        size: 150, color: Colors.grey.shade300)),
                Text("No Orders Yet",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "hit the orange button down\n below to create a order",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Start Ordering"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.deepOrangeAccent,
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
