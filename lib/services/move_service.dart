



import 'package:apfernando/models/movie_model.dart';

class MovieService{
  Future<List<Movie>> fetchMovies() async {
    await Future.delayed(Duration(seconds: 3));
    return [
      Movie("La La Land", "Damien Chazelle", "Musical", 2016),
      Movie("Inception", "Christopher Nolan", "Sci-Fi", 2010),
      Movie("The Godfather", "Francis Ford Coppola", "Crime", 1972)
    ];
  }

}