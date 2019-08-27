import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Sparkles Empire'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
             onPressed: (){},
            ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
             onPressed: (){},
            ),
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header part of the drawer
            new UserAccountsDrawerHeader(
              accountName: Text('Kristos Akalugwu'),//User acoount name
              accountEmail: Text('Kristosakalugwu@gmail.com'),//User account Email
            )
          ],
        ),
      ),
    );
  }
}
