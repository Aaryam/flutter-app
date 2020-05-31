import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import 'package:socialapp/classes.dart';
import 'package:socialapp/pages/mainpage.dart';
import 'package:socialapp/pages/picscreen.dart';
import 'package:socialapp/pages/secondpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: MyApp(
        firstCamera: firstCamera,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  final firstCamera;

  const MyApp({Key key, this.firstCamera}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: ColorList.primaryColor,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.video_call, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: PageView(
          children: <Widget>[
            Mainpage(),
            SecondPage(),
            TakePictureScreen(
              camera: firstCamera,
            ),
          ],
        ),
      ),
    );
  }
}
