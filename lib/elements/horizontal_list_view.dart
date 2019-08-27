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
            image_location: 'images/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/shoe.png',
            image_caption: 'Shoe',
          ),
          Category(
            image_location: 'images/jeans.png',
            image_caption: 'Jean',
          ),
          Category(
            image_location: 'images/informal.png',
            image_caption: 'Informal',
          ),
          Category(
            image_location: 'images/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'images/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/watch.png',
            image_caption: 'Watches',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
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
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
               child: Text(image_caption, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),)
            ),
          ),
        ),
      ),
    );
  }
}
