import 'package:movie_app/repositories/movies_repository.dart';
import 'package:flutter/material.dart';
import '../models/movie_model.dart';

class MovieController {
  final MovieRepository _movieRepository;
  MovieController(this._movieRepository) {
    // o fetch sera chamado apos o construtor para realizar a busca
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);

  Movies? _cachedMovies;

  onChanged(String value) {
    List<Movie> list = _cachedMovies!.movieList
        .where(
          (element) => element.toString().toLowerCase().contains(
                value.toLowerCase(),
              ),
        )
        .toList();
    movies.value = movies.value!.copyWith(movieList: list);
  }

  fetch() async {
    // chamando o getMovies e pegando repositorio e atribuindo ao valor do ValueNotifier
    movies.value = await _movieRepository.getMovies();

    _cachedMovies = movies.value;
  }
}
