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
        title: Text(
          'Image Selected title',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
          'Image Selected title',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        )
        ],
      ),
    );
  }
}
