import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      setState(() {
        _image = img;
        Navigator.of(context).pop();
      });
    } on Exception catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 250,
              width: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amber),
              child: FittedBox(
                child: Center(
                  child: _image == null
                      ? const Text('null')
                      : CircleAvatar(
                          backgroundImage: FileImage(_image!),
                          radius: 100,
                        ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: (() => _pickImage(ImageSource.gallery)),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
