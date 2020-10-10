import 'package:unity_app_flutter/models/user.model.dart';

class Message{

  final User sender;

  final String time;

  final String texte;

  final bool isLiked;
  final bool unRead;


  Message(
    {
      this.sender,
      this.time,
      this.texte,
      this.isLiked,
      this.unRead
    }
  );
}


final User currentUser = new User(id: 0 ,name: "current User",imageUrl:"assets/images/user1.jpg" );

//greg
final User greg = new User(id: 1 ,name: "Greg",imageUrl:"assets/images/user2.jpg" );

//serap
final User serap = new User(id: 2 ,name: "Serap",imageUrl:"assets/images/user3.jpg" );
final User phaust = new User(id: 3 ,name: "Phaust",imageUrl:"assets/images/user4.webp" );
final User gera = new User(id: 4 ,name: "Gera",imageUrl:"assets/images/user5.webp" );
final User hou = new User(id: 5 ,name: "Hou",imageUrl:"assets/images/user6.webp" );
final User sal = new User(id: 6 ,name: "Salo",imageUrl:"assets/images/user4.webp" );
final User ret = new User(id: 7 ,name: "Retro",imageUrl:"assets/images/user5.webp" );
final User sat = new User(id: 8 ,name: "Satur",imageUrl:"assets/images/user6.webp" );


//List favoris

List<User> favoris = [greg, serap, phaust,gera,hou];

//EXAMPLE CHATS ON HOME SCREEN

List<Message> chats = [

  Message(
    sender: sal,
    time: "5:30 PM",
    texte: "Salut ! Comment vas-tu ?",
    isLiked: true,
    unRead: false
    ),
  Message(
    sender: sat,
    time: "5:30 PM",
    texte: "Salut ! Comment vas-tu ?",
    isLiked: true,
    unRead: false
    ),
  Message(
    sender: ret,
    time: "5:30 PM",
    texte: "Salut ! Comment vas-tu ?",
    isLiked: true,
    unRead: false
    ),
  Message(
    sender: greg,
    time: "5:30 PM",
    texte: "Salut ! Comment vas-tu ?",
    isLiked: true,
    unRead: false
    ),

  Message(
    sender: phaust,
    time: "5:50 PM",
    texte: "Bro! On se coince où ?",
    isLiked: false,
    unRead: false
    ),

    Message(
    sender: gera,
    time: "6:50 PM",
    texte: "Stp, tu viens quand ?",
    isLiked: false,
    unRead: true
    ),

    Message(
    sender: hou,
    time: "7:50 PM",
    texte: "Reviens-moi stp",
    isLiked: true,
    unRead: true
    ),
];


//EXAMPLE CHATS IN CHAT SESSION

List<Message> chats_session = [

  Message(
    sender: greg,
    time: "5:30 PM",
    texte: "Salut ! Comment vas-tu ?",
    isLiked: true,
    unRead: false
    ),
 Message(
    sender: currentUser,
    time: "5:31 PM",
    texte: "Je vais bien merci et toi ?",
    isLiked: true,
    unRead: false
    ),
  Message(
    sender: greg,
    time: "5:50 PM",
    texte: "Bro! On se coince où ?",
    isLiked: false,
    unRead: false
    ),
    Message(
    sender: currentUser,
    time: "5:55 PM",
    texte: "Chez AVE ou à Houinta",
    isLiked: false,
    unRead: false
    ),

    Message(
    sender: greg,
    time: "6:50 PM",
    texte: "Stp, tu viens quand ?",
    isLiked: false,
    unRead: true
    ),

     Message(
      sender: currentUser,
      time: "6:53 PM",
      texte: "suis un peu coincé... Peut-être à midi",
      isLiked: false,
      unRead: true
    ),


    Message(
    sender: greg,
    time: "7:50 PM",
    texte: "Reviens-moi stp",
    isLiked: true,
    unRead: true
    ),

     Message(
    sender: currentUser,
    time: "7:50 PM",
    texte: "Okay, mais n'oublie pas l'autre chose dont je je t'avais parlée.. C'est hyper important",
    isLiked: true,
    unRead: true
    ),
];



