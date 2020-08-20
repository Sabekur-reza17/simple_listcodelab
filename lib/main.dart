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
import 'restapi/RestExampleOne.dart';
/*void main() => runApp(MyLonglists(
  products: List<String>.generate(500, (i) => "Product List: $i"),
));*/

void main() {runApp(RestExampleOne());}


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

/*
import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'doggie_database.db'),
    // When the database is first created, create a table to store dogs.
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)",
      );
    },
    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    version: 1,
  );

  Future<void> insertDog(Dog dog) async {
    // Get a reference to the database.
    final Database db = await database;

    // Insert the Dog into the correct table. Also specify the
    // `conflictAlgorithm`. In this case, if the same dog is inserted
    // multiple times, it replaces the previous data.
    await db.insert(
      'dogs',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Dog>> dogs() async {
    // Get a reference to the database.
    final Database db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('dogs');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Dog(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
  }

  Future<void> updateDog(Dog dog) async {
    // Get a reference to the database.
    final db = await database;

    // Update the given Dog.
    await db.update(
      'dogs',
      dog.toMap(),
      // Ensure that the Dog has a matching id.
      where: "id = ?",
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [dog.id],
    );
  }

  Future<void> deleteDog(int id) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'dogs',
      // Use a `where` clause to delete a specific dog.
      where: "id = ?",
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  var fido = Dog(
    id: 0,
    name: 'Fido',
    age: 35,
  );

  // Insert a dog into the database.
  await insertDog(fido);

  // Print the list of dogs (only Fido for now).
  print(await dogs());

  // Update Fido's age and save it to the database.
  fido = Dog(
    id: fido.id,
    name: fido.name,
    age: fido.age + 7,
  );
  await updateDog(fido);

  // Print Fido's updated information.
  print(await dogs());

  // Delete Fido from the database.
  await deleteDog(fido.id);

  // Print the list of dogs (empty).
  print(await dogs());
}

class Dog {
  final int id;
  final String name;
  final int age;

  Dog({this.id, this.name, this.age});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Dog{id: $id, name: $name, age: $age}';
  }
}



*/
