import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kamera_flutter/widgets/displaypicture_screen.dart';
import 'package:kamera_flutter/widgets/filter_carousel.dart';

class TakepictureScreen extends StatefulWidget {
  final CameraDescription camera;

  const TakepictureScreen({super.key , required this.camera});

  @override
  State<TakepictureScreen> createState() => _TakepictureScreenState();
}

class _TakepictureScreenState extends State<TakepictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a Picture - 2341720258')),
      // Gunakan FutureBuilder agar tunggu kamera siap dulu
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Jika kamera sudah siap, tampilkan preview
            return CameraPreview(_controller);
          } else {
            // Jika belum siap, tampilkan loading
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            // Pastikan kamera sudah siap
            await _initializeControllerFuture;

            // Ambil gambar
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            // Navigasi ke halaman DisplayPictureScreen
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PhotoFilterCarousel(imagePath: image.path),
              ),
            );
          } catch (e) {
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}