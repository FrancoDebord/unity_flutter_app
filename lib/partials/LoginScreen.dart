import 'package:flutter/material.dart';
import 'package:unity_app_flutter/partials/SignupScreen.dart';
import 'package:unity_app_flutter/partials/includes/CustomTextField.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body : Container(
        
        decoration: BoxDecoration(

            gradient: LinearGradient(

              colors: [Theme.of(context).primaryColor,Theme.of(context).primaryColor.withOpacity(0.2)], 
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            )
          ),

          child: Column(  

            children: [

              SizedBox( height: 100,),

              Row( 

                children: [

                  SizedBox(width: 40,),
                  Text("Welcome Back", style: TextStyle(  

                    color: Colors.white,
                    fontFamily:"Camar",
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
               
                ],
              ),

              
              SizedBox(height: 20,),

              Row(

                  children: [

                    SizedBox(width: 40,),

                    Text("Sign In with Your Account",
                    
                    style:TextStyle(  

                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100
                    ) ,
                    )
                  ],
                ),
                SizedBox(height: 65,),

                CustomTextField(hint: "---Email/Phone", secured: false,),

                CustomTextField(hint: "Password", secured: true,),
                SizedBox(height: 20),
                Row( 
                    mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    GestureDetector(

                      onTap: (){

                      },
                      child: Container(

                        child: Text("Forget Password ?", 
                        style: TextStyle(  
                          color: Colors.white,
                          fontWeight: FontWeight.w700,

                        ),
                        ),
                      ),
                    ),

                    SizedBox(width: 40,)
                  ],
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
                    child: Text("Log In ",
                    style: TextStyle(  

                      color : Colors.blueGrey,
                      fontSize: 22
                    ),
                    ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Center(

                  child: Text("-- Or --", 
                  style: TextStyle(  

                    color : Colors.white
                  ),
                  ),
                ),

                SizedBox( height: 20,),


              Container(

                height: 60,
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image( image: AssetImage("assets/images/facebook.jpg"),),
                    SizedBox( width: 20,),
                    Image( image: AssetImage("assets/images/google.png"),),
                  ],
                ),
              ),

              SizedBox( height: 55,),

              Row(  

                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text("Don't have an account ? ",
                  
                  style: TextStyle(  

                    color: Colors.white,
                  ) ,
                  ),

                  SizedBox(width: 10,),

                  GestureDetector(
                    child: Text("Sign Up", 
                    
                    style: TextStyle(  

                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline
                    ),
                    ),
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (_)=>SignupScreen()));
                    },
                  )
                ],
              )
            ],
          ),
      ),
    );
  }
}