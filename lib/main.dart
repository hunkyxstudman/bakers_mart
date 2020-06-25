import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:bakersmart/Components/horizontal_listview.dart';

void main(){

  runApp(new MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,


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

    Widget image_carousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/carouselone.jpg'),
          AssetImage('images/carousel/carouseltwo.jpg'),
          AssetImage('images/carousel/carouselthree.jpg'),
          AssetImage('images/carousel/carouselfour.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3,
        indicatorBgPadding: 5,

      ),

    );


    return Scaffold(
      appBar: new AppBar(
        centerTitle:  true,
        title: Image.asset('images/logo.png', fit: BoxFit.cover),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){}),
          new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.white, onPressed:  (){})
        ],
        backgroundColor: Colors.pink,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(


              accountName: Text("username"),

              accountEmail: Text("username@email.com"),
              decoration: new BoxDecoration(
                color: Colors.pinkAccent
              ),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  child: Icon(Icons.supervised_user_circle),
                ),
              ),),
            InkWell(
              onTap: (){},
              child: ListTile(
                selected: true,
                title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.home, color: Colors.pinkAccent),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Orders", style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.account_balance, color: Colors.pinkAccent),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Log out", style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.cancel, color: Colors.pinkAccent),
              ),
            ), Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Developed with ❤ by Hobarb", style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.sentiment_very_satisfied
                ,),

              ),
            ),



          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
         new Padding(padding: EdgeInsets.all(12)
         , child: new Text('Categories', textAlign: TextAlign.center,),),

          //will do the listview here
       HorizontalList(),
          HorizontalList()



        ],
      ),
    );
  }
}

