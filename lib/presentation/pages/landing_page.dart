import 'package:flutter/material.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/presentation/bloc/thumbnails_bloc.dart';
import 'package:photo_galery/presentation/widgets/grid_images_builder.dart';

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
          appBar: AppBar(
            title: Text('Photo Gallery'),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: gridImagesBuilder(context, thumbnailsInfo),
              ),
            ),
          ),
        );
      },
    );
  }
}
