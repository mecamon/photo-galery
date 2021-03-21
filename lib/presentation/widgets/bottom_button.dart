import 'package:flutter/material.dart';
import 'package:photo_galery/utils/const.dart';

class BottomButton extends StatelessWidget {

  final String buttonText;
  final Function onTap;

  const BottomButton({
    this.buttonText,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: onTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.black,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text(
                    buttonText,
                    style: kBigButtonTextStyle,
                  ),
                ],
              )),
              width: double.infinity,
              height: 80,
            ),
          ),
        ),
      ),
    );
  }
}
