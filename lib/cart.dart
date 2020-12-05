import 'package:ecommerce/yourcart.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.teal,
        title: Text('Your Cart'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: YourCart(),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text("Total: "),
              subtitle: Text(
                "\$220",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
            Expanded(
                child: MaterialButton(
              color: Colors.teal,
              onPressed: () {},
              child: Text("Check Out"),
            ))
          ],
        ),
      ),
    );
  }
}
