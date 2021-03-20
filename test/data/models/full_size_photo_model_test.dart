import 'package:flutter_test/flutter_test.dart';
import 'package:photo_galery/data/models/full_size_photo_model.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';

void main() {

  final thumbModel = ThumbnailsModel(
    id: 2,
    albumId: 2,
    thumbnailUrl: 'Some ramdom url String',
    url: 'Some other ramdom url String',
    title: 'This is a beautiful photo'
  );

  test('returns a new FullSizePhoto instance from a ThumbnailModel object parameter', ()  {
    
    //arrange
    final newFullSizePhoto = FullSizePhotoModel.fromThumbnailModel(thumbModel);

    //assert
    expect(newFullSizePhoto, isA<FullSizePhotoModel>());
  });
}