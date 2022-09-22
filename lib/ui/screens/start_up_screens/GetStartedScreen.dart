import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/dimen.dart';
import 'package:food_delivery_app/ui/screens/start_up_screens/LoginView.dart';
import 'package:food_delivery_app/config/color.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Builder(
            builder: ((context) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: DimensionConfig.button_height,
                    width: DimensionConfig.button_width,
                    child: FloatingActionButton.extended(
                      backgroundColor: ColorConfig.button_color,
                      isExtended: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      label: Text(
                        "Get Started!",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginView(),
                          ),
                        );
                      },
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
