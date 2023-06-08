import 'package:dio/dio.dart';

// interface
abstract class DioService {

  // getDio retorna uma instancia de Dio
  Dio getDio();
}