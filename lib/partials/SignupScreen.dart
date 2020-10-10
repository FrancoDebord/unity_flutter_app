import 'package:flutter/material.dart';
import 'package:unity_app_flutter/partials/includes/CustomTextField.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
          body: Container(
        
        decoration: BoxDecoration(

              gradient: LinearGradient(

                colors: [Theme.of(context).primaryColor,Theme.of(context).primaryColor.withOpacity(0.2)], 
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
              )
            ),

            child: Center(  

              child: Column(  

                children: [

                  SizedBox(
                    height: 50,
                  ),

                  Row(  

                    children: [

                      SizedBox(width: 40,),

                      Text("Create an account",
                      style: TextStyle(

                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Camar",

                      ),
                      )
                    ],
                  ),

                  SizedBox(height: 50,),

                  CustomTextField(
                    hint: "Enter Email",
                    secured: false,
                  ),
                  CustomTextField(
                    hint: "Enter Phone",
                    secured: false,
                  ),
                  CustomTextField(
                    hint: "Enter Fullname",
                    secured: false,
                  ),
                  CustomTextField(
                    hint: "Enter Pseudo",
                    secured: false,
                  ),
                  CustomTextField(
                    hint: "Enter Password",
                    secured: true,
                  ),
                  CustomTextField(
                    hint: "confirm Password",
                    secured: true,
                  ),

                  SizedBox(height: 20,),

                Padding(
                  padding:  EdgeInsets.only(left : 25.0, right:25.0),
                  child: ButtonTheme(

                    minWidth: MediaQuery.of(context).size.width,
                    height: 55,
                        child: RaisedButton(onPressed: () {},
                    
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    child: Text("Create account ",
                    style: TextStyle(  

                      color : Colors.blueGrey,
                      fontSize: 22
                    ),
                    ),
                    ),
                  ),
                ),

                ],
              ),
            ),

      ),
    );
  }
}