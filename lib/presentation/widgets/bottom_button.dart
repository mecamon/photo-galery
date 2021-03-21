import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {},
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
                      'See favorites',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ),
              width: double.infinity,
              height: 80,
            ),
          ),
        ),
      ),
    );
  }
}