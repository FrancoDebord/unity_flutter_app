import 'package:flutter/material.dart';
import 'package:unity_app_flutter/partials/creer_compte.dart';

creerDrawer(context){


  return Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Text('Drawer Header'),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
      ),
      ListTile(
        title: Text('Créer un compte'),
        onTap: () {
         
         Navigator.push(context, MaterialPageRoute(builder: (_)=> CreerCompteUtilisateur()));
        },
      ),
      ListTile(
        title: Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
);
}