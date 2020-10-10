import 'package:flutter/material.dart';
import 'package:unity_app_flutter/partials/FormCreerCompte.dart';

class CreerCompteUtilisateur extends StatefulWidget {
  @override
  _CreerCompteUtilisateurState createState() => _CreerCompteUtilisateurState();
}

class _CreerCompteUtilisateurState extends State<CreerCompteUtilisateur> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(  
        title: Text("Créer un compte"),
        centerTitle: true,
        elevation: 0.0,

      ),
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.only( 
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50)
          )
        ),

        child: Column(

          children: [

            SizedBox(
              height: 10.0,
            ),

            RichText(
              text: TextSpan(
                text: "Sign Up",
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.blueGrey,
                  fontFamily: "Raleway"
                )
                )
              ),

              FormCreerCompte(),
          ],
        ),
      ),
      
    );
  }
}