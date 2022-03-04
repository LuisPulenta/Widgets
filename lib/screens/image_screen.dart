import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  Uint8List? _imageData;
  File? fileImageData;

  @override
  void initState() {
    super.initState();
    downloadMemoryImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: ListView(
        children: <Widget>[
          Text("Asset"),
          Image.asset("assets/cb.jpg"),
          Divider(
            height: 10,
            color: Colors.red,
          ),
          Text("Network"),
          Image.network(
              "https://www.veniteapunilla.com/wp-content/uploads/2020/06/cuesta-blanca-cordoba-valle-de-punilla-venite-a-punilla-1.jpg"),
          Divider(
            height: 10,
            color: Colors.red,
          ),
          Text("Memory"),
          _memoryImage(),
          Divider(
            height: 10,
            color: Colors.red,
          ),
          Text("File"),
          _fileImage(),
        ],
      ),
    );
  }

  Widget _memoryImage() {
    if (_imageData == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Image.memory(_imageData!);
    }
  }

  void downloadMemoryImage() async {
    var url = Uri.parse(
        'https://www.veniteapunilla.com/wp-content/uploads/2020/06/cuesta-blanca-cordoba-valle-de-punilla-venite-a-punilla-1.jpg');
    var response = await http.get(url);
    saveFile(response.bodyBytes);
    setState(() {
      _imageData = response.bodyBytes;
    });
  }

  void saveFile(Uint8List bodyBytes) async {
    Directory myFolder = await getApplicationDocumentsDirectory();
    print(myFolder.path);
    File imageFile = File(myFolder.path + "/download_image.jpg");
    imageFile.writeAsBytesSync(bodyBytes);
    setState(() {
      fileImageData = imageFile;
    });
  }

  Widget _fileImage() {
    if (fileImageData == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Image.file(fileImageData!);
    }
  }
}
