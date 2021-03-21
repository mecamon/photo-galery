import 'package:flutter/material.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/presentation/bloc/thumbnails_bloc.dart';
import 'package:photo_galery/presentation/widgets/bottom_button.dart';
import 'package:photo_galery/presentation/widgets/cards_builder.dart';
import 'package:photo_galery/presentation/widgets/logo_builder.dart';
import 'package:photo_galery/utils/const.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {

    final thumbnailsBloc = ThumbnailsBloc();

    return StreamBuilder(
      stream: thumbnailsBloc.getThumbnailsList,
      builder: (_, AsyncSnapshot<List<ThumbnailsModel>> snapshot) {
        final thumbnailsInfo = snapshot.data ?? [];

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
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Favorite images',
                              style: kSubtitlesTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
