


import 'package:apfernando/models/movie_model.dart';
import 'package:apfernando/services/move_service.dart';
import 'package:flutter/foundation.dart';

class MovieViewModel extends ChangeNotifier{
  final MovieService _movieService = MovieService();
  List<Movie> _movies = [];
  bool _charging = false;
  List <Movie> get movies => _movies;
  bool get charging => _charging;

  Future<void> fetchMovies() async {
    _charging = true;
    notifyListeners();
    _movies = await _movieService.fetchMovies();
    _charging = false;
    notifyListeners();
  }
}
