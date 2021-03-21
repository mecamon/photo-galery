import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'dart:convert';

abstract class RemoteDataSource {
  //This method will return a list of ThumbnailModel objects formatted
  //from the Json response in the site https://jsonplaceholder.typicode.com/photos
  Future<List<ThumbnailsModel>> getThumbnails();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;

  RemoteDataSourceImpl({@required this.client});

  @override
  Future<List<ThumbnailsModel>> getThumbnails() async {
    final response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos'),
        headers: {'Content-Type': 'application/json'});

    List<ThumbnailsModel> photos = [];
    
    int limit = 80;

    if (response.statusCode == 200) {
      List data = json.decode(response.body);

      for (var jsonItem in data) {
        final photoInfo = ThumbnailsModel.fromJson(jsonItem);

        if (limit > 0) {
          photos.add(photoInfo);
          limit--;
        }
      }
    }

    return photos;
  }
}
