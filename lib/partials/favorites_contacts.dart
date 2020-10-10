import 'package:flutter/material.dart';
import 'package:unity_app_flutter/models/message.model.dart';
import 'package:unity_app_flutter/partials/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding:  EdgeInsets.symmetric(vertical : 10.0),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(


              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Contacts Favoris",
                
                style: TextStyle(

                  color: Colors.blueGrey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
                ),

                IconButton( 
                  icon: Icon(Icons.more_horiz, size: 30.0,color: Colors.black26),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: (){

                  },
                )
              ],
            ),
          ),

          Container( 
            height: 120.0,
            child: ListView.builder(
              
              itemCount: favoris.length,
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index){

                return GestureDetector(
                    

                     onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return ChatScreen(user : favoris [index]);
                          }));
                        },
                    child: Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(favoris[index].imageUrl),
                        ),

                        SizedBox(height: 6.0,),
                        Text(favoris[index].name,
                        
                        style: TextStyle(  
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              ),
          )
        ],
      ),
    );
  }
}