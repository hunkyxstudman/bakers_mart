import 'package:bakersmart/Pages/product_details.dart';
import 'package:flutter/material.dart';
import 'package:bakersmart/Pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Drum boards",
      "picture": "images/products/drumboards.jpg",
      "old_price": 0,
      "new_price": 0,
    },
    {
      "name": "Edible paint",
      "picture": "images/products/edible_paint.jpg",
      "old_price": 0,
      "new_price": 0,
    },
    {
      "name": "Whip cream",
      "picture": "images/products/whip_cream.jpg",
      "old_price": 0,
      "new_price": 0,
    },

    {
      "name": "Flexi Creme",
      "picture": "images/products/flexi_creme.jpg",
      "old_price": 0,
      "new_price": 0,
    }  ,
    {
      "name": "Toppers",
      "picture": "images/products/toppers.jpg",
      "old_price":   0,
      "new_price":   0,
    }
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index){
            return Single_Product(
              product_name: product_list[index]['name'],
              product_picture: product_list[index]['picture'],
              product_old_price: product_list[index]['old_price'],
              product_final_price: product_list[index]['new_price'],
            );
        });
  }
}

class Single_Product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_final_price;

  Single_Product(
      {this.product_final_price,
      this.product_name,
      this.product_old_price,
      this.product_picture});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: product_name, child: Material(
          child: InkWell(
        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new Product_Details())),
        child: GridTile(
          child: Image.asset(
            product_picture, fit: BoxFit.cover,),
          footer: Container(
          color: Colors.white70,
            child: ListTile(
              dense: true,
              //insert prices here
              // we can insert prices see tut14
              title: Text(product_name, textAlign:TextAlign.center ,style: TextStyle(
                  fontWeight: FontWeight.bold),),),),),
      )),),
    );
  }
}
