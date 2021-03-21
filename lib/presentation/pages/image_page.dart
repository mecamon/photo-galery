import 'package:flutter/material.dart';

class ImageSelected extends StatefulWidget {

  ImageSelected({Key key}) : super(key: key);

  @override
  _ImageSelectedState createState() => _ImageSelectedState();
}

class _ImageSelectedState extends State<ImageSelected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Image selected'),
          ),
          body: Text('Hello from image selected')
        );
  }
}