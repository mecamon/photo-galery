import 'package:flutter/material.dart';
import 'package:photo_galery/presentation/widgets/bottom_button.dart';
import 'package:photo_galery/presentation/widgets/full_image_builder.dart';
import 'package:photo_galery/presentation/widgets/logo_builder.dart';
import 'package:photo_galery/utils/const.dart';

class ImageSelected extends StatefulWidget {
  ImageSelected({Key key}) : super(key: key);

  @override
  _ImageSelectedState createState() => _ImageSelectedState();
}

class _ImageSelectedState extends State<ImageSelected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.00),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LogoBuilder(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Hello Photo!', style: kTitleTextStyle),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FullImageBuilder(),
                    BottomButton(
                      onTap: () {},
                      buttonText: 'Add to favorites',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}


