import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/config/dimen.dart';

import '../payment/Payment.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: ColorConfig.all_screen_background_color,
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Center(
                child: Icon(Icons.history,
                    size: 80, color: Colors.grey.shade300)),
            Text("No History Yet",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Text(
              "hit the orange button down\n below to create a order",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  width: DimensionConfig.button_width,
                  height: DimensionConfig.button_height,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
