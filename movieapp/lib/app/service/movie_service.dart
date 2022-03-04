import 'package:get/get.dart';
import 'package:movieapp/app/data/movie_models.dart';

class MovieService extends GetConnect {
  Future<List<dynamic>> fetchMovie() async {
    final response = await get(
        "https://api.themoviedb.org/3/movie/popular?api_key=1c8b264c288530d2748e0035ea6ba2ba");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }
}
