import 'package:flutter/material.dart';
import 'package:unity_app_flutter/partials/category_selector.dart';
import 'package:unity_app_flutter/partials/drawer.dart';
import 'package:unity_app_flutter/partials/favorites_contacts.dart';
import 'package:unity_app_flutter/partials/recents_chats.dart';



class UnityHomePage extends StatefulWidget {
  UnityHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _UnityHomePageState createState() => _UnityHomePageState();
}

class _UnityHomePageState extends State<UnityHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme.of(context).primaryColor,
      drawer: creerDrawer(context),
      appBar: AppBar(
        title: Text(widget.title, 
        style: TextStyle(
          fontSize: 23.0,
          // fontFamily: "Raleway",
          fontWeight: FontWeight.bold,
        ),
        ),
        
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.menu, size: 30.0, color: Colors.white,),
        //   onPressed: (){

            
        //   },
        //   ),
          elevation: 0.0,
          actions: [

            IconButton(
              icon: Icon(Icons.search, size: 30.0, color: Colors.white,),
              onPressed: (){

              },
            ),
          ],
      ),

      body: Column(

        children: [

          CategorySelector(),

          Expanded(
            
            child: Container( 
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
              ),

              child: Column(

                children: [

                  FavoriteContacts(),

                  RecentChats(),
                ],
              ),
            ),

            
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}