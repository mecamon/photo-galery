import 'package:flutter/material.dart';
import 'package:photo_galery/presentation/bloc/thumbnails_bloc.dart';
import 'package:photo_galery/presentation/pages/favorites_page.dart';
import 'package:photo_galery/presentation/pages/image_page.dart';
import 'package:photo_galery/presentation/pages/landing_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final thumbnailsBloc = ThumbnailsBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/image': (context) => ImageSelected(),
        '/favorites': (context) => FavoritesPage(),
      },
      
    );
  }
}

