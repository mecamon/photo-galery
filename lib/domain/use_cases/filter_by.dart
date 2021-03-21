import 'package:photo_galery/data/models/thumbnails_model.dart';

abstract class FilterBy {

  //This method is going to return a list of the thumbnails filtered by albums.
  List<ThumbnailsModel> thumbnailsFiltered(int albumId, List<ThumbnailsModel> entryList);
}

class FilterByImpl implements FilterBy {
  @override
  List<ThumbnailsModel> thumbnailsFiltered(int albumId, List<ThumbnailsModel> entryList) {
    
    final List<ThumbnailsModel> filteredThumbsList = [];

    for(ThumbnailsModel thumb in entryList) {
      if(thumb.albumId == albumId) {
        filteredThumbsList.add(thumb);
      }
    }

    return filteredThumbsList;
  }
  
}