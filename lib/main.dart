import 'package:flutter/material.dart';
import 'test.dart';
import 'lists/longlist.dart';
import 'lists/gridlist.dart';
import 'lists/HorizontalList.dart';
import 'froms/testfrom.dart';
import 'layoutpractice/singlelayoutexampleone.dart';
import 'layoutpractice/multichildexampleone.dart';
import 'layoutpractice/MultipleLayoutExTwo.dart';
import 'layoutpractice/practiceone.dart';
import 'animations/AnimatinExOne.dart';
import 'animations/AnimatinExTwo.dart';
import 'drawers/DrawerExampleOne.dart';
import 'layoutpractice/layoutorientation.dart';
import 'tabs/TabBarDemo.dart';
import 'images/ImageFromNetwork.dart';
import 'storages/SharedPreferencePractice.dart';
/*void main() => runApp(MyLonglists(
  products: List<String>.generate(500, (i) => "Product List: $i"),
));*/

void main() {runApp(SharedPreferencePractice());}


/*
import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final cameras=await availableCameras();
  final firstCamera=cameras.first;
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen (
        camera:firstCamera,
      ),
    )
  );
}

class TakePictureScreen extends StatefulWidget {
  final CameraDescription camera;

  const TakePictureScreen({Key key, this.camera}) : super(key: key);

  @override
  TakePictureScreenState createState() => TakePictureScreenState();

}
class TakePictureScreenState extends State<TakePictureScreen>{
  CameraController _cameraController;
  Future<void> _initialzeControllerFuture;

  @override
  void initState() {
    _cameraController= CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initialzeControllerFuture=_cameraController.initialize();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Take a picture'),),
      body: FutureBuilder<void>(
        future: _initialzeControllerFuture,
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return CameraPreview(_cameraController);
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () async {
          try{
          await _initialzeControllerFuture;
          final path =join(
          (await getTemporaryDirectory()).path,
          '${DateTime.now()}.png',
          );
          await _cameraController.takePicture(path);
          Navigator.push(context,
      MaterialPageRoute(
      builder: (context) =>DisplayPictureScreen(imagePath:path),
      ));
      }catch(e){
            print(e);
      }
      },
      ),
    );
    throw UnimplementedError();
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Display the picture'),),
      body: Image.file(File(imagePath)),
    );
    throw UnimplementedError();
  }
}
*/


