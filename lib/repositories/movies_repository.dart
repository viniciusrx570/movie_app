
import '../models/movie_model.dart';

// classe abstrata de movies,
abstract class MovieRepository {
  Future<Movies> getMovies(); // buscando apartir da model da classe Movies
}