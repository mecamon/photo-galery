import 'package:meta/meta.dart';

class Thumbnails {

  @required final int albumId;
  @required final int id;
  @required final String thumbnailUrl;
  @required final String title;
  @required final String url;

  Thumbnails({this.albumId, this.id, this.thumbnailUrl, this.title, this.url});

}