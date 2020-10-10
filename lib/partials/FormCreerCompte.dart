import 'package:flutter/material.dart';

class FormCreerCompte extends StatefulWidget {
  @override
  _FormCreerCompteState createState() => _FormCreerCompteState();
}

class _FormCreerCompteState extends State<FormCreerCompte>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;


  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(


          children: [
           
               TextFormField(

                decoration: InputDecoration.collapsed(
                  
                  hintText: "Votre nom",
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.all(Radius.circular(50))
                  )
                  
                  ),
              ),
          ],
        ),
      
        
    );
  }
}