import 'package:flutter/material.dart';
class MyGridList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final appTitle="flutter grid list demo";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(appBar: AppBar(
        title: Text(appTitle),
      ),
        body: GridView.count(crossAxisCount: 3,
        children:List.generate(choices.length, (index) {
          return Center(
            child: SelectedCard(choice:choices[index]),
          );
        })),
      ),
    );
    throw UnimplementedError();
  }
  
}
class Choice{
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;


}
const List<Choice> choices=const<Choice>[
  const Choice(title:'home', icon:Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
  const Choice(title: 'GPS', icon: Icons.gps_fixed),

];
class SelectedCard extends StatelessWidget{
  final Choice choice;

  const SelectedCard({Key key, this.choice}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle=Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.lightGreenAccent,
      child: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Icon(choice.icon,size: 50.0,color: textStyle.color)),
          Text(choice.title,style: textStyle),
        ],
      ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}
