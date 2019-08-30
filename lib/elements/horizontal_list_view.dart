import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'images/tshirt.png',
            imagecaption: 'Shirt',
          ),
          Category(
            imagelocation: 'images/shoe.png',
            imagecaption: 'Shoe',
          ),
          Category(
            imagelocation: 'images/jeans.png',
            imagecaption: 'Jean',
          ),
          Category(
            imagelocation: 'images/informal.png',
            imagecaption: 'Informal',
          ),
          Category(
            imagelocation: 'images/formal.png',
            imagecaption: 'Formal',
          ),
          Category(
            imagelocation: 'images/dress.png',
            imagecaption: 'Dress',
          ),
          Category(
            imagelocation: 'images/watch.png',
            imagecaption: 'Watches',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  Category({
    this.imagelocation,
    this.imagecaption,
  });
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imagelocation,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
               child: Text(imagecaption, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),)
            ),
          ),
        ),
      ),
    );
  }
}
