import 'package:photo_galery/data/models/thumbnails_model.dart';

abstract class SearchBy {
  //This method should narrow down the search with asosiated words
  List<ThumbnailsModel> listSearched({List<ThumbnailsModel> entryList, String criteria});
}

class SearchByImpl implements SearchBy {
  @override
  // List<ThumbnailsModel> listSearched(String criteria) {
  //   return [
  //     ThumbnailsModel(
  //         albumId: 2,
  //         id: 53,
  //         thumbnailUrl: 'some 2 url',
  //         title: 'Photo Carlos',
  //         url: 'Random url'),
  //   ];
  // }

  @override
  List<ThumbnailsModel> listSearched({List<ThumbnailsModel> entryList, String criteria}) {
    
    List<ThumbnailsModel> filteredList = [];
    List<String> strList = [];

    for(ThumbnailsModel thumb in entryList) {
      strList = thumb.title.split(' ');

      for(String str in strList) {
        if (str == criteria) filteredList.add(thumb);
      }
    }

    return filteredList;

  }

}
