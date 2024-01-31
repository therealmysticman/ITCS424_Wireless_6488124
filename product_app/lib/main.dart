import 'dart:ui';

import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Flutter Demo',
 theme: ThemeData(
 primarySwatch: Colors.blue,
 ),
 home: MyHomePage(title: 'Product layout demo home page'),
 );
}
}
class MyHomePage extends StatelessWidget {
 MyHomePage({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text("Product Listing")),
 body: ListView(shrinkWrap: true,
 padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
 children: <Widget>[
 ProductBox(
 name: "iPhone",
 description: "iPhone is the stylist phone ever",
 price: 1000,
 image: "assets/MT223.jpg", ),
 ProductBox(
 name: "Pixel",
 description: "Pixel is the most featureful phone ever",
 price: 800,
 image: "assets/58aefac1c869e092af51ee68.png"),
 ProductBox(
 name: "Laptop",
 description: "Laptop is most productive development tool",
 price: 2000,
 image: "assets/588524d86f293bbfae451a31.png"),
 ProductBox(
 name: "Tablet",
 description: "Tablet is the most useful device ever for meeting",
 price: 1500,
 image: "assets/gratis-png-tableta.png"),
 ProductBox(
 name: "Pendrive",
 description: "iPhone is the stylist phone ever",
 price: 100,
 image: "assets/kisspng-usb-flash-drives-sandisk-cruzer-blade-usb-2-0-cruz-usb-flash-drive-5b466bc4507053.7683281715313417643295.jpg"),
 ProductBox(
 name: "Floppy Drive",
 description: "iPhone is the stylist phone ever",
 price: 20,
 image: "assets/png-transparent-floppy-disk-disk-storage-compact-disc-hard-drives-disk-computer-blue-angle-electronic-device.png"),
 ProductBox(
 name: "iPhone",
 description: "iPhone is the stylist phone ever",
 price: 1000,
 image: "assets/packshot-iphone-15-black.png"),
 ProductBox(
 name: "iPhone",
 description: "iPhone is the stylist phone ever",
 price: 1000,
 image: "assets/packshot-iphone12-blue.png"),
 ],
 ));
 }
}
class RatingBox extends StatefulWidget {
 @override
 _RatingBoxState createState() => _RatingBoxState();
}
class _RatingBoxState extends State<RatingBox> {int _rating = 0;
 void _setRatingAsOne() {
 setState( () {
 _rating = 1;
 });
 }
 void _setRatingAsTwo() {
 setState( () {
 _rating = 2;
 });
 }
 void _setRatingAsThree() {
 setState( () {
 _rating = 3;
 });
 }
 Widget build(BuildContext context) {
 double _size = 20;
 print(_rating);
 return Row(
 mainAxisAlignment: MainAxisAlignment.end,
 crossAxisAlignment: CrossAxisAlignment.end,
 mainAxisSize: MainAxisSize.max,
 children: <Widget>[
 Container(
 padding: EdgeInsets.all(0),
 child: IconButton(
 icon: (_rating >= 1 ? Icon(Icons.star, size: _size,) :
Icon(Icons.star_border, size: _size,)),
 color: Colors.red[500],
 onPressed: _setRatingAsOne,
 iconSize: _size,
 ),
 ),
 Container(
 padding: EdgeInsets.all(0),
 child: IconButton(
 icon: (_rating >= 2 ? Icon(Icons.star, size: _size,) :
Icon(Icons.star_border, size: _size,)),
 color: Colors.red[500],
 onPressed: _setRatingAsTwo,
 iconSize: _size,
 ),
 ),
 Container(
 padding: EdgeInsets.all(0),
 child: IconButton(
 icon: (_rating >= 3 ? Icon(Icons.star, size: _size,) :
Icon(Icons.star_border, size: _size,)),
color: Colors.red[500],
 onPressed: _setRatingAsThree,
 iconSize: _size,
 ),
 ),
 ],
 );
 }
}
class ProductBox extends StatelessWidget {
 ProductBox({Key? key, required this.name, required this.description, required this.price,
required this.image})
 : super(key: key);
 final String name;
 final String description;
 final int price;
 final String image;
 Widget build(BuildContext context) {
 return Container(
 padding: EdgeInsets.all(2),
 height: 140,
 child: Card(
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: <Widget>[
 Image.asset(image, 
 width: 50, height: 200,),
 Expanded(
 child: Container(
 padding: EdgeInsets.all(5),
 child: Column(
 mainAxisAlignment:
MainAxisAlignment.spaceEvenly,
 children: <Widget>[
 Text(this.name,
 style: TextStyle(fontWeight:
FontWeight.bold)),
 Text(this.description),
Text("Price: " + this.price.toString()),
RatingBox(),
 ],
 )))
 ])));
 }
}