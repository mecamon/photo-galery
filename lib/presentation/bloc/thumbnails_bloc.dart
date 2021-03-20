import 'package:photo_galery/data/models/thumbnails_model.dart';
import 'package:photo_galery/data/datasources/remote_data_source.dart';
import 'package:http/http.dart' as http;


class ThumbnailsBloc {

  Stream<List<ThumbnailsModel>> get getThumbnailsList async* {

    final client = http.Client();
    final remoteSource = RemoteDataSourceImpl(client: client);

    final List<ThumbnailsModel> thumbnails = await remoteSource.getThumbnails();

    yield thumbnails;

  }

}

