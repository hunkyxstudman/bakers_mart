import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: "images/listview/iconfinder_raw.png",
            image_caption: "Raw materials",
          ),
          Category(
            image_location: "images/listview/iconfinder_boxes.png",
            image_caption: "Cake boxes",
          ),
          Category(
            image_location: "images/listview/iconfinder_crushers.png",
            image_caption: "Fruit fillings",
          ),
          Category(
            image_location: "images/listview/iconfinder_moulds.png",
            image_caption: "Silicon moulds",
          ),

       
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category(
  {
    this.image_caption,
    this.image_location
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(4),
    child: InkWell(onTap: (){},
      child: Container(
        width: 100 ,
        child: ListTile(
          title: Image.asset(image_location, width: 100, height: 100,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption, textAlign: TextAlign.center,),
          ),
        ),
      ),
    ),);
  }
}

