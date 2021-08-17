import 'ImageUploadModel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SingleImageUpload extends StatefulWidget {
  static const id = 'storedocuments';

  @override
  _SingleImageUploadState createState() {
    return _SingleImageUploadState();
  }
}

class _SingleImageUploadState extends State<SingleImageUpload> {
  List<Object> images = [];
  Future<File> _imageFile;

  @override
  void initState() {
    super.initState();
    setState(() {
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Attach docs',
          ),
          backgroundColor: Colors.orange.shade600,
        ),
        body: Column(
          children: <Widget>[
            Text(
              'Upload your Prescriptions',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 19,
                  fontStyle: FontStyle.italic,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: buildGridView(),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showChoiceDialog(int index) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Make a choice"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () {
                      _onAddImageGallery(index);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () {
                      _onAddImageCamera(index);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget buildGridView() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      childAspectRatio: 1,
      children: List.generate(images.length, (index) {
        if (images[index] is ImageUploadModel) {
          ImageUploadModel uploadModel = images[index];
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: <Widget>[
                Image.file(
                  uploadModel.imageFile,
                  width: 300,
                  height: 300,
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: InkWell(
                    child: Icon(
                      Icons.delete,
                      size: 20,
                      color: Colors.red,
                    ),
                    onTap: () {
                      setState(() {
                        images.replaceRange(index, index + 1, ['Add Image']);
                      });
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Card(
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _showChoiceDialog(index);
              },
            ),
          );
        }
      }),
    );
  }

  Future _onAddImageGallery(int index) async {
    setState(() {
      // ignore: deprecated_member_use
      _imageFile = ImagePicker.pickImage(source: ImageSource.gallery);
      getFileImage(index);
    });
    Navigator.of(context).pop();
  }

  Future _onAddImageCamera(int index) async {
    setState(() {
      // ignore: deprecated_member_use
      _imageFile = ImagePicker.pickImage(source: ImageSource.camera);
      getFileImage(index);
    });
    Navigator.of(context).pop();
  }

  void getFileImage(int index) async {
//    var dir = await path_provider.getTemporaryDirectory();

    _imageFile.then((file) async {
      setState(() {
        ImageUploadModel imageUpload = ImageUploadModel();
        imageUpload.isUploaded = false;
        imageUpload.uploading = false;
        imageUpload.imageFile = file;
        imageUpload.imageUrl = '';
        images.replaceRange(index, index + 1, [imageUpload]);
      });
    });
  }
}
