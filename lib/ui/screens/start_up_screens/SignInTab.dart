import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/color.dart';
import 'package:food_delivery_app/config/dimen.dart';
import 'package:food_delivery_app/ui/screens/home/HomeScreen.dart';
import 'package:food_delivery_app/ui/screens/home/MainHomeScreen.dart';
import 'package:food_delivery_app/utils/UiUtils.dart';

import 'forget_password.dart';

class SignInTab extends StatefulWidget {
  @override
  _SignInTabState createState() => _SignInTabState();
}

class _SignInTabState extends State<SignInTab> {
  bool isHidePassword = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Container(
        //height: UiUtils.getHeightFromPercentageInPx(context, 50),
        color: ColorConfig.all_screen_background_color,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Email Address", suffixIcon: Icon(Icons.mail)),
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: passwordController,

                  obscureText: isHidePassword,
                  decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: InkWell(
                        child: Icon(Icons.visibility),
                        onTap: togglePasswordView,
                      )),
                )),
            Container(
                child: FlatButton(
                    onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ForgetPassword()));

                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.lightBlue),
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: FlatButton(
                onPressed: () async {
                   try {
                    UserCredential userCredential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainHomeScreen()),
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainHomeScreen()),
                  );*/
                },

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Login",
                ),
                color: Colors.deepOrangeAccent,
                minWidth: DimensionConfig.button_width,
                height: DimensionConfig.button_height,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void togglePasswordView() {
    setState(() {
      isHidePassword = !isHidePassword;
    });
  }
}
