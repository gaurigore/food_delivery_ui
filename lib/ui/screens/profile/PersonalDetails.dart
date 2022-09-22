import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/config/color.dart';

class PersonalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.backgroundColor2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConfig.backgroundColor2,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "My Profile",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Personal Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 10, top: 20, bottom: 80),
                    child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Image(
                          image: AssetImage("assets/images/profile_image.jpeg"),
                          height: 80,
                          width: 80,
                        ))),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 23),
                                  child: Container(
                                      child: Text(
                                    "kuldip Satpute",
                                    style: TextStyle(fontSize: 18),
                                  )),
                                ),
                                SizedBox(height: 10),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey))),
                                    child: Text(
                                      "test@gmail.com",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey))),
                                    child: Text(
                                      "+91 9988776655",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    child: Text(
                                  "b-222,magic circle\nopposite coffee ine,\nsolapur",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                  maxLines: 7,
                                )),
                              ]),
                        ),
                      ]),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {},
              //padding: EdgeInsets.only(left:),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "orders",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              height: 50,
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {},
              //padding: EdgeInsets.only(left:),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Pending reviews",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              height: 50,
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {},
              //padding: EdgeInsets.only(left:),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Faq",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              height: 50,
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {},
              //padding: EdgeInsets.only(left:),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Help",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              height: 50,
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                    //minimumSize:MaterialStateProperty.all()
                  ),
                  child: Text("Update"),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
