import 'package:flutter/material.dart';

class LogoBuilder extends StatelessWidget {
  const LogoBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 60,
        height: 60,
        color: Colors.white,
        child: Icon(
          Icons.image,
          size: 35,
          color: Colors.black,
        ),
      ),
    );
  }
}