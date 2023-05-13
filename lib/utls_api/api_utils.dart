class API{

  // requisita a imagem

  // ignore: non_constant_identifier_names
  static String REQUEST_IMG(String img) =>
      'https://image.tmdb.org/t/p/w500$img';


  // retorna a pagina 1 de listas

  // ignore: constant_identifier_names
  static const REQUEST_MOVIE_LIST = '/3/list/1?api_key=1d21ed79b0cdb388b0940f387a5e8ea0';
}
