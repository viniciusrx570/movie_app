import 'package:dio/dio.dart';

import 'dio_service.dart';

// classes que implementa a interface de DioService o dio e Busca a url base
class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org',
        headers: {
          'accept': 'application/json',
          'Authorization': 'Bearer 1d21ed79b0cdb388b0940f387a5e8ea0',
        },
      ),
    );
  }
}
