import 'package:flutter/material.dart';
import 'package:photo_galery/utils/const.dart';

class FullImageBuilder extends StatelessWidget {

  const FullImageBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Image title', style: kSubtitlesTextStyle),
        Container(
          height: 370,
          width: double.infinity,
          child: Image.network(
              'https://via.placeholder.com/600/f66b97'
          ),
        ),
      ],
    );
  }
}