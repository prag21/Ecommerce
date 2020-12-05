import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final name;
  final price;
  final picture;

  ProductDetails({this.name, this.price, this.picture});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.teal,
        title: Text('FashionApp'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                child: Image.asset(widget.picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: Expanded(
                    child: Text(
                      "\$${widget.price}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.teal,
                  textColor: Colors.grey,
                  elevation: 0.1,
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
                color: Colors.red,
              ),
              IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {},
                  color: Colors.black),
            ],
          ),
          ListTile(
            title: Text('Product Details'),
            subtitle: Text(
              "Good one",
            ),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Name",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Seller",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("X", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child:
                    Text("New", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Top Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
          ),
          Container(
            height: 360.0,
            child: Similar(),
          ),
        ],
      ),
    );
  }
}

class Similar extends StatefulWidget {
  @override
  _SimilarState createState() => _SimilarState();
}

class _SimilarState extends State<Similar> {
  var product = [
    {
      "name": "LipShades",
      "picture": "assets/13.jpg",
      "price": 85,
    },
    {
      "name": "Joggers",
      "picture": "assets/14.jpg",
      "price": 20,
    },
    {
      "name": "Sunglasses",
      "picture": "assets/15.jpg",
      "price": 95,
    },
    {
      "name": "HandBag",
      "picture": "assets/16.jpg",
      "price": 105,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single1(
            name: product[index]['name'],
            picture: product[index]['picture'],
            price: product[index]['price'],
          );
        });
  }
}

class Single1 extends StatelessWidget {
  final String name;
  final String picture;

  final int price;
  Single1({this.name, this.picture, this.price});
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
                      style: TextStyle(color: Colors.red),
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
