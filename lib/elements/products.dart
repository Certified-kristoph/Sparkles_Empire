import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_List = [
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
        itemCount: product_List.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_List[index]['name'],
            product_picture: product_List[index]['picture'],
            product_oldprice: product_List[index]['old_price'],
            product_price: product_List[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_oldprice;
  final product_price;

  Single_product({
    this.product_name,
    this.product_picture,
    this.product_oldprice,
    this.product_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: product_name,
      child: Material(
        child: InkWell(
          onTap: () {},
          child: GridTile(
            child: Image.asset(
              product_picture,
              fit: BoxFit.cover,
            ),
            footer: Container(
              color: Colors.white60,
              child: ListTile(
                leading: Text(
                  product_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text("₦$product_price",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800)),
                subtitle: Text(
                  "₦$product_oldprice",
                  style: TextStyle(
                      color: Colors.redAccent, fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough), 
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
