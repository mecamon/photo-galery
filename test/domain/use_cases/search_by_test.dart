import 'package:flutter_test/flutter_test.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/domain/use_cases/search_by.dart';

void main() {
  final List<ThumbnailsModel> entryList = [
    ThumbnailsModel(
        albumId: 2,
        id: 53,
        thumbnailUrl: 'some 2 url',
        title: 'Photo Carlos',
        url: 'Random url'),
  ];

  test('Type return check', () {
    //arrange
    final searcher = SearchByImpl();
    final String searchCriteria = 'Carlos';
    
    //act
    final filtered = searcher.listSearched(
      entryList: entryList, 
      criteria: searchCriteria
    );

    //assert
    expect(filtered, isA<List<ThumbnailsModel>>());

  });

  test('Narrow down the search by the given criteria', () {
    //arrange
    final searcher = SearchByImpl();
    final String searchCriteria = 'Carlos';
    
    //act
    final filtered = searcher.listSearched(
      entryList: entryList, 
      criteria: searchCriteria
    );

    //assert
    expect(filtered[0].title, entryList[0].title);
  });
}
