import 'package:flutter/material.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/presentation/widgets/card_images_builder.dart';

class CardsBuilder extends StatelessWidget {

  final List<ThumbnailsModel> thumbsList;

  const CardsBuilder({
    this.thumbsList,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 240,
        child: Scrollbar(
          isAlwaysShown: true,
          thickness: 3,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cardsMaker(thumbsList),
          ),
        ),
      ),
    );
  }

  List<CardImagesBuilder> cardsMaker(List<ThumbnailsModel> thumbList) {

    final List<CardImagesBuilder> cardList = [];

    for(ThumbnailsModel thumb in thumbsList) {

      final newCard = CardImagesBuilder(thumb: thumb);

      cardList.add(newCard);

    }

    return cardList;

  }

}