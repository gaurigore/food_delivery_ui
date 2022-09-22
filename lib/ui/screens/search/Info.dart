import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/dimen.dart';
import 'package:food_delivery_app/ui/screens/cart/Cart.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F9),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xFFF6F6F9),
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            color: Color(0xFFF6F6F9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/mix_veg.png"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 0.8),
                        ]),
                    //child:Image()
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Center(
                  child: Text(
                    "Veggie tomato mix\n",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Center(
                    child: Text(" N1,900",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.red))),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Delivery  Info",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                    "foods are delivered Monday to Saturday up to 11pm\n"
                    "Orders can be tracked online\n"
                    "on sunday foods are available  after 11am",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                SizedBox(
                  height: 14,
                ),
                Text("Return policy",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(
                  height: 8,
                ),
                Text(
                    "SORRY… we generally DO NOT entertain any Order Cancellations\n"
                    "Cancellation of order can be done for Cash on Delivery order if the order is not processed ",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
               SizedBox(
                  height: 80,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Container(
                        width: DimensionConfig.button_width,
                        height: DimensionConfig.button_height,
                        // padding: EdgeInsets.all(),
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Cart()));
                          },
                          backgroundColor: Colors.deepOrangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          isExtended: true,
                          label: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
