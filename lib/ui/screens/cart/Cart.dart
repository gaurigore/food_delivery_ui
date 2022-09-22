import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/config/dimen.dart';
import 'package:food_delivery_app/ui/widgets/IncrementDecrementCartItem.dart';

import '../payment/Payment.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.backgroundColor2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                TextButton.icon(
                    icon: Icon(Icons.swipe),
                    label: Text("swipe right to delete"))
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      secondaryActions: [
                        CircleAvatar(
                          child: IconButton(
                            icon: Icon(Icons.favorite_border_rounded),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                          backgroundColor: Color(0xFFDF2C2C),
                        ),
                        CircleAvatar(
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          backgroundColor: Color(0xFFDF2C2C),
                        ),
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((24)),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/mix_veg.png"),
                                        fit: BoxFit.cover),
                                    shape: BoxShape.circle,
                                  )),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Veggie tomato mix",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "# 1,900",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: IncrementDecrementCartItem(),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: DimensionConfig.button_width,
                  height: DimensionConfig.button_height,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payment()),
                      );
                    },
                    child: Text("Complete Order"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.deepOrangeAccent,
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)))),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
