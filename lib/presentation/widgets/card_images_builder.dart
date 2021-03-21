import 'package:flutter/material.dart';

class CardImagesBuilder extends StatelessWidget {

  final String urlSource;

  const CardImagesBuilder({
    this.urlSource,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 160,
        width: 160,
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(urlSource),),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 0, 0),
              child: Text('Photo title'),
            ),
          ],
        ),
      ),
    );
  }
}