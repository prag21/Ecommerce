import 'package:ecommerce/productdetails.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product = [
    {
      "name": "Western Wear",
      "picture": "assets/9.jpg",
      "price": 85,
    },
    {
      "name": "BagPack",
      "picture": "assets/11.jpg",
      "price": 100,
    },
    {
      "name": "Sandals",
      "picture": "assets/10.jpg",
      "price": 75,
    },
    {
      "name": "LipStick",
      "picture": "assets/12.jpg",
      "price": 50,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single(
            name: product[index]['name'],
            picture: product[index]['picture'],
            price: product[index]['price'],
          );
        });
  }
}

class Single extends StatelessWidget {
  final String name;
  final String picture;

  final int price;
  Single({this.name, this.picture, this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                    name: name,
                    price: price,
                    picture: picture,
                  )));
        },
        child: Material(
          child: InkWell(
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "\$${price}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
