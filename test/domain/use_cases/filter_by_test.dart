import 'package:flutter_test/flutter_test.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/domain/use_cases/filter_by.dart';

void main() {
  
  //Mock data
  final List<ThumbnailsModel> entryList = [
    ThumbnailsModel(
        albumId: 1,
        id: 54,
        thumbnailUrl: 'some url',
        title: 'Photo 1',
        url: 'Random url'),
    ThumbnailsModel(
        albumId: 2,
        id: 53,
        thumbnailUrl: 'some 2 url',
        title: 'Photo 2',
        url: 'Random url'),
    ThumbnailsModel(
        albumId: 1,
        id: 35,
        thumbnailUrl: 'some 3 url',
        title: 'Photo 4',
        url: 'Random url')
  ];

  test('verifying the return type', () {
    //arrange
    final int albumId = 1;
    final filter = FilterByImpl();

    //act
    var newListFiltered = filter.thumbnailsFiltered(albumId, entryList);

    //assert
    expect(newListFiltered, isA<List<ThumbnailsModel>>());
  });
  test('returns the list filtered by the id passed as an argument', () {
    //arrange
    final int albumId = 1;
    final filter = FilterByImpl();

    //act
    var newListFiltered = filter.thumbnailsFiltered(albumId, entryList);

    //assert
    for (ThumbnailsModel thumb in newListFiltered) {
      expect(thumb.albumId, albumId);
    }
  });
}
