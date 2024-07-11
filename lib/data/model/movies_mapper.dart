import 'package:filmguru/data/api/model/movie_item_response.dart';

import 'movie_item.dart';

class MoviesMapper {
  static const posterBaseUrl = "https://image.tmdb.org/t/p/w500";

  static MovieItem mapMovie(MovieItemResponse movieItemResponse) => MovieItem(
        title: movieItemResponse.title,
        poster: posterBaseUrl + movieItemResponse.posterPath,
      );
}
