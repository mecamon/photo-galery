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
          bottomNavigationBar: BottomAppBar(
            child: Center(
              child: Text(
                'See favorites',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              heightFactor: 2.50,
            ),
            elevation: 0.0,
            notchMargin: 0,
          ),
          appBar: AppBar(
            title: Text(
              'Photo Gallery',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Scrollbar(
                isAlwaysShown: true,
                thickness: 4,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: gridImagesBuilder(context, thumbnailsInfo),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
