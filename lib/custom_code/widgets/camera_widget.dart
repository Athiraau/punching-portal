// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore_for_file: unnecessary_statements

import 'package:camera/camera.dart';
import 'dart:convert';

class CameraWidget extends StatefulWidget {
  const CameraWidget({
    Key? key,
    this.width,
    this.height,
    required this.updateBase64Image,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() updateBase64Image;

  get CameraTime => null;

  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  CameraController? controller;
  XFile? pictureFile;
  List<CameraDescription>? cameras;

  List<CameraDescription>? getCameraList() {
    availableCameras().then((value) {
      cameras = value;
      controller = CameraController(
        cameras![0],
        ResolutionPreset.max,
      );
      controller!.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    });
    return null;
  }

  @override
  void initState() {
    super.initState();
    getCameraList();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SizedBox(
              height: 250,
              width: 300,
              child: CameraPreview(controller!),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async {
              pictureFile = await controller!.takePicture();
              setState(() {});
              final bytes = await XFile(pictureFile!.path).readAsBytes();
              // ignore: unused_local_variable
              String base64Image = base64Encode(bytes);

              FFAppState().LocalBase64Image = base64Image;
              widget.CameraTime;
            },
            child: const Text('Capture Image'),
          ),
        ),
        if (pictureFile != null)
          Image.network(
            pictureFile!.path,
            height: 200,
          )
      ],
    );
  }
}
