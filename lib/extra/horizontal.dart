import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image: 'assets/5.jpg',
            description: 'Clothes',
          ),
          Category(
            image: 'assets/6.jpg',
            description: 'Cosmetics',
          ),
          Category(
            image: 'assets/7.jpg',
            description: 'Shades',
          ),
          Category(
            image: 'assets/8.jpg',
            description: 'Bags',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image;
  final String description;
  Category({this.image, this.description});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image,
              height: 80,
              width: 100,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                description,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
