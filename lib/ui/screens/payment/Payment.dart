import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/config/dimen.dart';
import 'package:food_delivery_app/ui/screens/payment/Delivery.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  var selectedValue = 3;
  var groupValue = 1;

  onTab(val) {
    groupValue = val;
    selectedValue = val;
  }

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            backgroundColor: Color(0xFFEDEDED),
            title: Center(
                child: Text(
              " please note",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            contentPadding: EdgeInsets.only(top: 20),
            content: Container(
                height: 200,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24)),
                ),
                child: Container(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text("Please note", style: TextStyle(color: Colors.grey)),
                      Text("N2ooo-N3000"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Divider(
                          height: 2,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Please note",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("N2ooo-N3000"),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 35,
                            width: 90,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Delivery()),
                                );
                              },
                              child: Text("Proceed"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.deepOrangeAccent),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)))),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            width: 90,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("cancel"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.deepOrangeAccent),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.backgroundColor2,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: ColorConfig.backgroundColor2,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 40, right: 40),
          color: ColorConfig.backgroundColor2,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Payment",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Payment method",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //mainAxisSize: MainAxisSize.min,
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Payment method",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 3,
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          activeColor: Color(0xFFFA4A0C),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Door delivery",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 4,
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(
                              () {
                                selectedValue = value;
                              },
                            );
                          },
                          activeColor: Color(0xFFFA4A0C),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Pick up",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Total",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      "23,000",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 80,),
              Container(
                width: DimensionConfig.button_width,
                height: DimensionConfig.button_height,
                child: ElevatedButton(
                  onPressed: () async {
                    /* Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Delivery()),
                  );*/
                    await showInformationDialog(context);
                  },
                  child: Text("Proceed to payment"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.deepOrangeAccent,
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
