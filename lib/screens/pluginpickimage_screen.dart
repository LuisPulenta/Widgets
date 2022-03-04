import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PluginPickImageScreen extends StatefulWidget {
  const PluginPickImageScreen({Key? key}) : super(key: key);

  @override
  State<PluginPickImageScreen> createState() => _PluginPickImageScreenState();
}

class _PluginPickImageScreenState extends State<PluginPickImageScreen> {
  XFile? _image;

  void getImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    var image = await _picker.pickImage(source: source);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('Image Picker'),
      ),
      body: Center(
        child: _image == null
            ? Text("No hay imagen seleccionada")
            : Image.file(
                File(_image!.path),
              ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showOptions(context),
      ),
    );
  }

  void _showOptions(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            children: <Widget>[
              ListTile(
                title: Text("Cámara"),
                leading: Icon(Icons.camera_alt),
                onTap: () {
                  Navigator.pop(context);
                  getImage(ImageSource.camera);
                },
              ),
              ListTile(
                title: Text("Galería"),
                leading: Icon(Icons.image),
                onTap: () {
                  Navigator.pop(context);
                  getImage(ImageSource.gallery);
                },
              )
            ],
          );
        });
  }
}
