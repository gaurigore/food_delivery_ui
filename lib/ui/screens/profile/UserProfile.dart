import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/config/dimen.dart';
import 'package:food_delivery_app/utils/UiUtils.dart';

import 'PersonalDetails.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  var groupValue = 1;

  onTab(val) {
    groupValue = val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          color: ColorConfig.all_screen_background_color,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(

                    "information",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white),
                    child: Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 10, top: 20, bottom: 80),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //margin: EdgeInsets.symmetric(vertical:5,horizontal:4),
                          child: Center(
                              child: Image(
                                image: AssetImage("assets/images/profile_image.jpeg"),
                                height: 80,
                                width: 80,
                              )),
                        ),
                      ),
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    icon: Icon(Icons.edit_outlined),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PersonalDetails()),
                                      );
                                    },
                                    iconSize: 38,
                                  )),
                              Container(
                                  child: Text(
                                    "kuldip Satpute",
                                    style: TextStyle(fontSize: 18),
                                  )),
                              SizedBox(height: 10),
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom:
                                          BorderSide(color: Colors.grey))),
                                  child: Text(
                                    "test@gmail.com",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  child: Text(
                                    "b-222,magic circle ,oposite \nto coffee line,solapur\n 431432",
                                    style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                                    maxLines: 7,
                                  )),
                            ]),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Payment Method",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: groupValue,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value;
                                });
                              },
                              activeColor: Color(0xFFFA4A0C),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                  child: Icon(
                                    Icons.credit_card,
                                    size: 30,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Card",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 2,
                              groupValue: groupValue,
                              onChanged: (value) {
                                setState(
                                      () {
                                    groupValue = value;
                                  },
                                );
                              },
                              activeColor: Color(0xFFFA4A0C),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                  child: Icon(
                                    Icons.account_balance,
                                    size: 30,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Bank account",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(children: <Widget>[
                          Radio(
                            value: 3,
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value;
                              });
                            },
                            activeColor: Color(0xFFFA4A0C),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                child: Image(
                                  image: AssetImage("assets/images/Paypal.png"),
                                  width: 30,
                                  height: 30,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Paypal",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: FlatButton(
                        onPressed: () {
                          /*Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>HomeScreen()),
                            );*/
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "Update",
                        ),
                        color: Colors.deepOrangeAccent,
                        minWidth: DimensionConfig.button_width,
                        height: DimensionConfig.button_height,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
