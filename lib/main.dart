import 'package:flutter/material.dart';
import 'app.dart';
import 'dart:ui';

import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];
Future <void> main() async {

  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }

  runApp(const MyApp());
}