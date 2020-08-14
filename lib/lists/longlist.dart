import 'package:flutter/material.dart';
class MyLonglists extends StatelessWidget{
  final List<String> products;

  const MyLonglists({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final appTitle="Flutter long list demo";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView.builder(
          itemCount: products.length,
            itemBuilder: (context,index){
            return ListTile(
              title: Text('${products[index]}'),
            );
            },
      ),
      ),
    );
    throw UnimplementedError();
  }
  
}