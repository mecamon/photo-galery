import 'package:flutter/material.dart';

class TextFieldBuilder extends StatelessWidget {
  const TextFieldBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 20, color: Colors.white),
      cursorWidth: 2,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius:
            BorderRadius.all(Radius.circular(20))),
        filled: true,
        fillColor: Colors.black54,
        suffixIcon: Icon(
          Icons.search,
          color: Colors.white,
          size: 40,
        ),
        labelText: 'Search by title',
        labelStyle: TextStyle(color: Colors.grey, fontSize: 17),
      ),
    );
  }
}