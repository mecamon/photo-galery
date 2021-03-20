import 'package:photo_galery/domain/entities/thumbnails.dart';
import 'package:meta/meta.dart';

class ThumbnailsModel extends Thumbnails {
  
  @required int albumId;
  @required int id;
  @required String thumbnailUrl;

  ThumbnailsModel({
    this.albumId,
    this.id,
    this.thumbnailUrl
  }) : super(
    albumId: albumId, 
    id: id, 
    thumbnailUrl: thumbnailUrl
  );

  factory ThumbnailsModel.fromJson(Map<String, dynamic> json) {
    return ThumbnailsModel(
      albumId: json['albumId'],
      id: json['id'],
      thumbnailUrl: json['thumbnailUrl']
    );
  }

}