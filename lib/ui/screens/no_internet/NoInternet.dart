import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';

class NoInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("No Internet"),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        color: ColorConfig.backgroundColor2,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                  child: Icon(Icons.wifi_off_sharp,
                      size: 150, color: Colors.grey.shade300)),
              SizedBox(
                height: 10,
              ),
              Text("No Internet Connection",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text(
                "your internet connection is currently  ",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text("not available please check and try again",
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Try Again"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.deepOrangeAccent,
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
