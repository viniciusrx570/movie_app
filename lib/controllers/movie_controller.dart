

import 'package:movie_app/repositories/movies_repository.dart';
import 'package:flutter/material.dart';
import '../models/movie_model.dart';


class MovieController{
  final MovieRepository _movieRepository;
  MovieController(this._movieRepository){
    // o fetch sera chamado apos o construtor para realizar a busca
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);

  fetch() async {
    // chamando o getMovies e pegando repositorio e atribuindo ao valor do ValueNotifier
   movies.value = await _movieRepository.getMovies();
  }
}