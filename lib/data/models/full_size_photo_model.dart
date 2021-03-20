import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/domain/entities/full_size_photo.dart';
import 'package:meta/meta.dart';

class FullSizePhotoModel extends FullSizePhoto{

  @required final int id;
  @required final String url;
  @required final String title;

  FullSizePhotoModel({this.id, this.url, this.title})
   : super(id: id, url: url, title: title);

  factory FullSizePhotoModel.fromThumbnailModel(ThumbnailsModel thumbModel) {
    return FullSizePhotoModel(
      id: thumbModel.id,
      url: thumbModel.url,
      title: thumbModel.title
    );
  }

}