import 'package:flutter/material.dart';



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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}