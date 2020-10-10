import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:unity_app_flutter/partials/LoginScreen.dart';
import 'package:unity_app_flutter/partials/accueil.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Timer(

        Duration(milliseconds: 2500),(){

          Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
        }
        
    );
    return Scaffold(
      

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

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 120,),

              Text("Unity App", 
              style: TextStyle(  

                color: Colors.white,
                fontFamily: "Camar",
                fontSize: 30.0
              ) ,),

              SizedBox(height: 20,),
              Container( 
                height: 260,
                child: Image( 
                  image: AssetImage("assets/images/Dignamik_logo_sansfond.png"),
                ),
              ),

              SizedBox(height: 15,),
              Text("Meet and dialog", 
              
              style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              SizedBox( height: 150,),

              new LinearPercentIndicator(
                animation: true,
                animationDuration: 2500,
                width: 240.0,
                lineHeight: 4.0,
                percent: 1.0,
                alignment: MainAxisAlignment.center,
                backgroundColor: Colors.white,
                progressColor: Colors.amber
              ),

            ],
          ),
        ),
      ),
    );
  }
}