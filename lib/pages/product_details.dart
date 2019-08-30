import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productdetailname;
  final productdetailnewprice;
  final productdetailoldprice;
  final productdetailpicture;

  ProductDetails(
      {this.productdetailname,
      this.productdetailnewprice,
      this.productdetailoldprice,
      this.productdetailpicture});

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
            height: 277.0,
            child: GridTile(
              child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.productdetailpicture)),
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  //product detail name and config
                  leading: Text(
                    widget.productdetailname,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "₦${widget.productdetailoldprice}",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "₦${widget.productdetailnewprice}",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //=====This creates the buttons for dropdowns on the product page==========
          Row(
            children: <Widget>[
              //-======This is for the size button to be done============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: (context),
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose a size'),
                            actions: <Widget>[
                              MaterialButton(
                                child: Text(
                                  'close',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              //-======This is for the color  to be done============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: (context),
                        builder: (context) {
                          return AlertDialog(
                            title: Text('color'),
                            content: Text('Choose a color'),
                            actions: <Widget>[
                              MaterialButton(
                                child: Text(
                                  'close',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                color: Colors.blue,
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              //-======This is for the Quantity button to be done============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: (context),
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose quantity'),
                            actions: <Widget>[
                              MaterialButton(
                                child: Text(
                                  'close',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                color: Colors.blue,
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Unit'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              //-======This is for the Buy Now Button button to be done============
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy Now'),
                ),
              ),
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.red,
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.red,
                  onPressed: () {}),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product Information'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0,5.0),
              child: Text('Product Name', style:TextStyle(color: Colors.grey)),),
              
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.productdetailname),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0,5.0),
              child: Text('Product Brand', style:TextStyle(color: Colors.grey)),),
              //======Remember to create product brand===========
              Padding(padding: EdgeInsets.all(5.0),
              child: Text('Brand X'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0,5.0),
              child: Text('Product Condition', style:TextStyle(color: Colors.grey)),),
            
              Padding(padding: EdgeInsets.all(5.0),
              child: Text('New'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
