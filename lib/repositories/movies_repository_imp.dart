import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';
import 'package:movie_app/services/dio_service.dart';

import '../utls_api/api_utils.dart';

class MovieRepositoryImp implements MovieRepository {

  // Injeção e Inversão de dependecias
  final DioService _dioService;
  MovieRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    // retornando a primeira lista da api 
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    // retorna os dados de models
    return Movies.fromJson(result.data);
  }

}