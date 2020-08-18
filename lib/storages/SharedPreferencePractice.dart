import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPreferencePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preference demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MySharedHomePage (title:'Shared prefernce demo'),
    );
  }
}

class MySharedHomePage extends StatefulWidget {
  final String title;

  const MySharedHomePage({Key key, this.title}) : super(key: key);
  @override
  _MySharedHomePageState createState() => _MySharedHomePageState();
}

class _MySharedHomePageState extends State<MySharedHomePage> {
  int _counter=0;

  @override
  void initState() {
    _loadCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('you have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  _loadCounter() async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    setState(() {
      _counter=(preferences.getInt('counter') ?? 0);
    });
  }
  _incrementCounter() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    setState(() {
      _counter=(preferences.getInt('counter') ?? 0)+1;
      preferences.setInt('counter', _counter);
    });
  }


}
