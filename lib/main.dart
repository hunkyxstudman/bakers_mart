import 'package:flutter/material.dart';

void main(){

  runApp(new MaterialApp(
    home: HomePage()


  )
  );

  
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Bakers Mart", style: TextStyle(fontSize: 12),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}

