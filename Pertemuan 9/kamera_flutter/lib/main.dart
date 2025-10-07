import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kamera_flutter/widgets/takepicture_screen.dart';

Future<void> main() async {
  // inisialisasi camera
  WidgetsFlutterBinding.ensureInitialized();

  // buat objek camera
  final cameras = await availableCameras();

  // ambil kamera pertama
  final firstCamera = cameras.first;

  runApp(MaterialApp(
      theme: ThemeData.dark(),
      home: TakepictureScreen(
        camera: firstCamera,
      ),
      debugShowCheckedModeBanner: false,
  ));
}
