import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class ForgetPassword extends StatelessWidget {
  TextEditingController email=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Enter Registered Email"),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText:"email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),


              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*1,
              child: ElevatedButton(

                onPressed: (){

                try {
                  FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("check email to reset password!"),

                  ));
                  Navigator.pop(context);
                } catch (e) {
                  print(e);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(" email not registered!"),


                  ));
                }

              }, child: Text("Reset Password"),
              ),
            ),
          ),
        ],
      )

    );
  }
}
