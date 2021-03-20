import 'package:flutter/material.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/presentation/bloc/thumbnails_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final thumbnailsBloc = ThumbnailsBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final thumbnailsBloc = ThumbnailsBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder(
        stream: thumbnailsBloc.getThumbnailsList,
        builder: (_, AsyncSnapshot<List<ThumbnailsModel>> snapshot) {

          final thumbnailsInfo = snapshot.data ?? [];

          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: listImageBuilder(thumbnailsInfo)
                ,
              ),
            ),
          );
        },
      ),
    );
  }


  List<Image> listImageBuilder(List<ThumbnailsModel> thumbnailsData) {
    
    List<Image> images = [];

    for(ThumbnailsModel thumbnail in thumbnailsData) {
      final image = Image.network(thumbnail.thumbnailUrl);

      images.add(image);
    }
    return images;
  }

}
