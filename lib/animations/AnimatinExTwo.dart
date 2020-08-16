import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class AnimationExTwo extends AnimatedWidget{
  AnimationExTwo({Key key,Animation<double> animation}):super(key :key,listenable:animation);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final animatin=listenable as Animation<double>;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: animatin.value,
        width: animatin.value,
        child: FlutterLogo(),
      ),
    );
    throw UnimplementedError();
  }
  
}
class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  @override
  Widget build(BuildContext context) =>AnimationExTwo(animation:animation);

  @override
  void initState() {
    super.initState();
    controller=AnimationController(duration: const Duration(seconds: 2),vsync: this);
    animation=Tween<double>(begin: 0,end: 300).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
