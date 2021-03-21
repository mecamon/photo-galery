import 'package:flutter/material.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/presentation/bloc/thumbnails_bloc.dart';
import 'package:photo_galery/presentation/widgets/bottom_button.dart';
import 'package:photo_galery/presentation/widgets/cards_builder.dart';
import 'package:photo_galery/presentation/widgets/logo_builder.dart';
import 'package:photo_galery/presentation/widgets/text_field_builder.dart';
import 'package:photo_galery/utils/const.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final thumbnailsBloc = ThumbnailsBloc();

  @override
  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFieldBuilder(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'All images',
                          style: kSubtitlesTextStyle,
                        ),
                        CardsBuilder(thumbsList: thumbnailsInfo),
                        BottomButton(
                          onTap: () {},
                          buttonText: 'See favorites',
                        )
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
