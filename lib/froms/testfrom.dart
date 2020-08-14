import 'package:flutter/material.dart';
class MyCustomFromApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appTitle='flutter form demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomFrom(),
      ),

    );
    // TODO: implement build
    throw UnimplementedError();
  }
  
}

class MyCustomFrom extends StatefulWidget {
  @override
  MyCustomFromState createState(){
    return MyCustomFromState();
  }
}
class MyCustomFromState extends State<MyCustomFrom>{
  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',

            ),
            validator: (value){
              if(value.isEmpty){
                return 'please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter phone number',
              labelText: 'Phone',
            ),
            validator: (value){
              if(value.isEmpty){
                return 'please enter valid phone number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
            validator: (value){
              if(value.isEmpty){
                return 'please enter valid date';
              }
              return null;
            },
          ),
          new Container(
            padding: const EdgeInsets.only(left: 150.0,top:40.0),
            child: new RaisedButton(
              child: const Text('Submit'),
                onPressed:(){
                if(_formkey.currentState.validate()){
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Data is processing')));
                }
                })),
        ],
      ),
    );
    throw UnimplementedError();
  }
}