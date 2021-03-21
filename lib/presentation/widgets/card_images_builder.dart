import 'package:flutter/material.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/presentation/pages/image_page.dart';

class CardImagesBuilder extends StatelessWidget {

  final ThumbnailsModel thumb;

  const CardImagesBuilder({
    this.thumb,
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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/image');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(thumb.thumbnailUrl),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 0, 0),
              child: Text(thumb.title),
            ),
          ],
        ),
      ),
    );
  }
}