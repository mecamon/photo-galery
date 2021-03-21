import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/presentation/bloc/thumbnails_bloc.dart';
import 'package:photo_galery/presentation/widgets/bottom_button.dart';
import 'package:photo_galery/presentation/widgets/card_images_builder.dart';
import 'package:photo_galery/presentation/widgets/logo_builder.dart';
import 'package:photo_galery/presentation/widgets/text_field_builder.dart';

class LandingPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LandingPage> {
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
                          child: Text(
                            'Hello Photo!',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w400),
                          ),
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
                          style: TextStyle(fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 200,
                            child: Scrollbar(
                              isAlwaysShown: true,
                              thickness: 3,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CardImagesBuilder(
                                    urlSource:
                                        'https://via.placeholder.com/150/45601a',
                                  ),
                                  CardImagesBuilder(
                                    urlSource:
                                        'https://via.placeholder.com/150/45601a',
                                  ),
                                  CardImagesBuilder(
                                    urlSource:
                                        'https://via.placeholder.com/150/45601a',
                                  ),
                                  CardImagesBuilder(
                                    urlSource:
                                        'https://via.placeholder.com/150/45601a',
                                  ),
                                  CardImagesBuilder(
                                    urlSource:
                                        'https://via.placeholder.com/150/45601a',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        BottomButton()
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
