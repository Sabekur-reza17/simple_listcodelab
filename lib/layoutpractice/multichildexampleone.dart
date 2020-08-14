import 'package:flutter/material.dart';
class MultipleLayoutChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Multiple Layout Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MultipleLayoutPage(),
    );
    throw UnimplementedError();
  }

}

class MultipleLayoutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text('Sabekur',textAlign: TextAlign.center,),
            ),
            Expanded(
              child: Text('Reza',textAlign: TextAlign.center,),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: const FlutterLogo(),
              ),
            )
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
}