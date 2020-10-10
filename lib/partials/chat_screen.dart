import 'package:flutter/material.dart';
import 'package:unity_app_flutter/models/message.model.dart';
import 'package:unity_app_flutter/models/user.model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 23.0,
            // fontFamily: "Raleway",
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(

        onTap: ()=>FocusScope.of(context).unfocus(),
              child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      )
                      ),

                  child: ClipRRect(

                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    child: ListView.builder(

                        padding: EdgeInsets.only(top:15.0),
                        itemCount: chats_session.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Message message = chats_session[index];

                          final bool isMe = message.sender.id == currentUser.id;
                          return _buildMessage(message, isMe);
                        }),
                  )),
            ),

            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }


  _buildMessageComposer(){

    return Container( 

      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: [

          IconButton( 
            icon: Icon(Icons.emoji_emotions),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: (){

            },
          ),

  Expanded(
    child: TextField(

      decoration: InputDecoration.collapsed(  
        hintText: "Envoyer un message",
      ),
      onChanged: (value){


      },
    )
    ),
            IconButton( 
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: (){
              
            },
          )
        ],
        ),
    );
  }

  Widget _buildMessage(Message message, bool isMe){


    var msg = Container( 

          margin: isMe ? EdgeInsets.only(top:8.0, bottom:8.0,left: 80.0) : EdgeInsets.only(top:8.0, bottom:8.0),

          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width*0.75,
          decoration: BoxDecoration( 

          color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            borderRadius: isMe ? BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
            ) : 
            BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(message.time, 
              style: TextStyle( 

                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600

              ),
              ),
              SizedBox(height: 5.0,),
              Text(message.texte,

                style: TextStyle( 

                  color: Colors.blueGrey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600
                
              ),

              ),
            ],
          ),
        ); 


        if(isMe){

          return msg;
        }

    return Row(
      children: [
        
        msg,


        IconButton(
            icon: Icon(
              message.isLiked? Icons.favorite : Icons.favorite_border,
              size: 30.0,
              color: message.isLiked? Theme.of(context).primaryColor : Colors.black,
            ),
            onPressed: () {},
          ) ,
      ],
    );
  }
}
