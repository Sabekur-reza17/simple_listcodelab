
import 'package:flutter/material.dart';
class ComplexLayoutEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Complex ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyCompleLayoutPage(title:'Complex layout example'),
    );
    throw UnimplementedError();
  }
  
}

class MyCompleLayoutPage extends StatelessWidget {
  MyCompleLayoutPage({Key key,this.title}):super(key:key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product list"),),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
        children: <Widget>[
          ProductBox(
            name: "iphone",
            description: "iphone is the top branded phone ever",
            price: 444440,
            image: "imageone.png"
          ),
          ProductBox(
              name: "Android",
              description: "Android is a very stylish phone",
              price: 10000,
              image: "imageone.png"
          ),
          ProductBox(
              name: "Tablet",
              description: "Tablet is a popular device for official meetings",
              price: 25000,
              image: "imageone.png"
          ),
          ProductBox(
              name: "Laptop",
              description: "Laptop is most famous electronic device",
              price: 35000,
              image: "imageone.png"
          ),
          ProductBox(
              name: "Desktop",
              description: "Desktop is most popular for regular use",
              price: 10000,
              image: "imageone.png"
          ),
        ],
      ),

    );
    // TODO: implement build
    throw UnimplementedError();
  }


}

class ProductBox extends StatelessWidget{
  ProductBox({Key key,this.name,this.description,this.price,this.image}):
  super(key:key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 110,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/"+image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  children: <Widget>[
                    Text(
                      this.name,style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(this.description),Text(
                      "price:"+this.price.toString()
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}