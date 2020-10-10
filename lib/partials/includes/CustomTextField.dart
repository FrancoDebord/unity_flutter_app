import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  String hint;
  bool secured; 


  CustomTextField({
    this.hint,
    this.secured
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: EdgeInsets.only( top: 10, left:25, right:25),
      child: TextField(

        obscureText: secured,
        cursorColor: Colors.white,
        decoration: InputDecoration(  
          

          hintText: hint,
          disabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.transparent)
          ),
         
         
          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.transparent)
          ),

          hintStyle: TextStyle(  

            fontSize: 14,
            letterSpacing: 1.5,
            color: Colors.white24,
            fontWeight: FontWeight.w700,

          ),
          filled: true,
          fillColor: Colors.white.withOpacity(.3),
          focusColor: Colors.transparent
          

        ),
      ),
    );
  }
}