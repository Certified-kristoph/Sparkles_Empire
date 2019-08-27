import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'elements/horizontal_list_view.dart';
import 'elements/products.dart';
import 'package:sparkles_empire/elements/horizontal_list_view.dart';
import 'package:sparkles_empire/elements/products.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/bk4.jpg'),
          AssetImage('images/bk6.jpg'),
          AssetImage('images/bk7.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotBgColor: Colors.white,
        dotColor: Colors.red,
        indicatorBgPadding: 2.0,
      ),
    );

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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header part of the drawer
            new UserAccountsDrawerHeader(
              accountName: Text('Kristos Akalugwu'), //User acoount name
              accountEmail:
                  Text('Kristosakalugwu@gmail.com'), //User account Email
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

            //Body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //Image Carousel
          imageCarousel,
          //Categories padding widget
          new Padding(
            padding: EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          //Horizontal list view for categories
          HorizontalList(),

          //Padding Widget
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Recent Projects',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
            ),
          ),

          //GridView
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
