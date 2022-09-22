import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/dimen.dart';
import 'package:food_delivery_app/ui/screens/home/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_app/ui/screens/home/MainHomeScreen.dart';

class SignUpTab extends StatefulWidget {
  @override
  _SignUpTabState createState() => _SignUpTabState();
}

class _SignUpTabState extends State<SignUpTab> {
  bool isHidePassword = true;
  FirebaseAuth _auth=FirebaseAuth.instance;
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: confirmPasswordController,
              obscureText: isHidePassword,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                suffixIcon: InkWell(
                  child: Icon(Icons.visibility),
                  onTap: togglePasswordView,
                ),
              ),
            ),
          ),
          SizedBox(height: 60,),
          Container(
            padding: EdgeInsets.all(10),
            child: FlatButton(
              onPressed: () async{
               /* try {
                  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );


                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }*/


              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "SignUp",
              ),
              color: Colors.deepOrangeAccent,
              minWidth: DimensionConfig.button_width,
              height: DimensionConfig.button_height,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void togglePasswordView() {
    setState(() {
      isHidePassword = !isHidePassword;
    });
  }
}
