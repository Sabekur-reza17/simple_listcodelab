import 'package:flutter/material.dart';
class AnimationExOne extends StatefulWidget{
 _LogoAppState createState()=>_LogoAppState();

}
class _LogoAppState extends State<AnimationExOne>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 200,
        width: 200,
        child: FlutterLogo(),
      ),
    );
    throw UnimplementedError();
  }

}