import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/domain/entities/thumbnails.dart';
import '../../json_mocks/json_reader.dart';

void main() {
final ThumbnailsModel tThumbnailsModel = ThumbnailsModel(
  id: 2,
  albumId: 1,
  thumbnailUrl: 'https://via.placeholder.com/150/771796'
);

  test('Expect a Thumbnail subclass object type', () {
    
    //assert
    expect(tThumbnailsModel, isA<Thumbnails>());
  });

  test('Converting json to a valid thumbnailsModel', () async {
    //arrange
    final Map<String, dynamic> jsonMap = jsonDecode(jsonReader('photo_info.json'));

    //act
    final result = ThumbnailsModel.fromJson(jsonMap);
    
    //assert
    expect(result, isA<ThumbnailsModel>());
  });
}