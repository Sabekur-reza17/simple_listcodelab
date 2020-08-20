import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
Future<Album> fetchAlbum() async{
  final response=await http.get('https://jsonplaceholder.typicode.com/albums/1');
  if(response.statusCode==200){
    return Album.fromJson(json.decode(response.body));
  }else{
    throw Exception('Failed to load album');
  }
}
class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
class RestExampleOne extends StatefulWidget {
  RestExampleOne({Key key}):super(key:key);

  @override
  _RestExampleOneState createState() => _RestExampleOneState();


}

class _RestExampleOneState extends State<RestExampleOne> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum=fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetch data example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('Fatch data example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Text(snapshot.data.title);
              }else if(snapshot.hasError){
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      )
    );
  }
}