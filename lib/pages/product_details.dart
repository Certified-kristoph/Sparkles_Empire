import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productdetailname;
  final productdetailnewprice;
  final productdetailoldprice;
  final productdetailpicture;

  ProductDetails(
    {
      this.productdetailname,
      this.productdetailnewprice,
      this.productdetailoldprice,
      this.productdetailpicture
    }
  );

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        title: Text('Sparkles Empire'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
//This is for the main body of the product details page.
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child:Container(
                color: Colors.white,
                child: Image.asset(widget.productdetailpicture)
              ),
            footer: Container(
              color: Colors.white,
              child: ListTile(
                leading:Text(widget.productdetailname),
              ),
            ),
            ),
          )
        ],
      ),
      
    );
  }
}