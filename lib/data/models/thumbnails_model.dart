import 'package:photo_galery/domain/entities/thumbnails.dart';
import 'package:meta/meta.dart';

class ThumbnailsModel extends Thumbnails {
  
  @required int albumId;
  @required int id;
  @required String thumbnailUrl;
  @required String title;
  @required String url;

  ThumbnailsModel({
    this.albumId,
    this.id,
    this.thumbnailUrl,
    this.title,
    this.url
  }) : super(
    albumId: albumId, 
    id: id, 
    thumbnailUrl: thumbnailUrl,
    title: title,
    url: url
  );

  factory ThumbnailsModel.fromJson(Map<String, dynamic> json) {
    return ThumbnailsModel(
      albumId: json['albumId'],
      id: json['id'],
      thumbnailUrl: json['thumbnailUrl'],
      title: json['title'],
      url: json['url']
    );
  }

}