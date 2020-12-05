import 'package:flutter/material.dart';

class YourCart extends StatefulWidget {
  @override
  _YourCartState createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {
  var products = [
    {
      "name": "HandBag",
      "picture": "assets/16.jpg",
      "price": 105,
    },
    {
      "name": "Sunglasses",
      "picture": "assets/15.jpg",
      "price": 95,
    },
    {
      "name": "Joggers",
      "picture": "assets/14.jpg",
      "price": 20,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return SingleCart(
          name: products[index]['name'],
          price: products[index]['price'],
          picture: products[index]['picture'],
        );
      },
    );
  }
}

class SingleCart extends StatelessWidget {
  final name;
  final price;
  final picture;

  SingleCart({this.name, this.price, this.picture});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          picture,
          width: 80.0,
          height: 80.0,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                    "Size",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text("M",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color", style: TextStyle(color: Colors.black)),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text("Blue",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("\$$price",
                  style: TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        trailing: Icon(
          Icons.add,
          color: Colors.teal,
        ),
      ),
    );
  }
}
