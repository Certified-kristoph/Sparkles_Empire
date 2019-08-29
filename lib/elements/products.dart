import 'package:flutter/material.dart';
import 'package:sparkles_empire/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Shoe",
      "picture": "images/shoes/shoe1.jpg",
      "old_price": "35,000",
      "price": "25,000",
    },
    {
      "name": "Watch",
      "picture": "images/watches/watch3.jpg",
      "old_price": "25,000",
      "price": "20,000",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Singleproduct(
            productname: productList[index]['name'],
            productpicture: productList[index]['picture'],
            productoldprice: productList[index]['old_price'],
            productprice: productList[index]['price'],
          );
        });
  }
}

class Singleproduct extends StatelessWidget {
  final productname;
  final productpicture;
  final productoldprice;
  final productprice;

  Singleproduct({
    this.productname,
    this.productpicture,
    this.productoldprice,
    this.productprice,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: productname,
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            //this is for passing product details and values from one page to the clicked one
              builder: (context) => new ProductDetails(
                productdetailname: productname,
                productdetailnewprice: productprice,
                productdetailoldprice: productoldprice,
                productdetailpicture: productpicture,
              ))),
          child: GridTile(
            child: Image.asset(
              productpicture,
              fit: BoxFit.cover,
            ),
            footer: Container(
              color: Colors.white60,
              child: ListTile(
                leading: Text(
                  productname,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text("₦$productprice",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800)),
                subtitle: Text(
                  "₦$productoldprice",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
