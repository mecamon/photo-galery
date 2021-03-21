import 'package:flutter/material.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/presentation/pages/image_page.dart';

List<TextButton> gridImagesBuilder(
    BuildContext context, List<ThumbnailsModel> thumbnailsData) {
  List<TextButton> images = [];

  for (ThumbnailsModel thumbnail in thumbnailsData) {
    final image = TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ImageSelected();
          }));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.network(
            thumbnail.thumbnailUrl,
            scale: .8,
          ),
        ));

    images.add(image);
  }
  return images;
}
