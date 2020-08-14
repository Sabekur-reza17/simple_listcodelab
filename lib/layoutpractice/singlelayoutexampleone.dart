import 'package:flutter/material.dart';
class SingleChildExampleOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green
    ),
      home: MyHomePagete(),
    );
    throw UnimplementedError();
  }
  
}

class MyHomePagete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("FitterBox Widget"),),
      body: Center(
        child: FittedBox(child: Row(
          children: <Widget>[
            Container(
              child: Image.asset('assets/imageone.png'),
            ),
            Container(
              child: Text("This is a widget"),
            )

          ],
        ),
          fit: BoxFit.contain,
        ),
      ),
    );
    throw UnimplementedError();
  }
}