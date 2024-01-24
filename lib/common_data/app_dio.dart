import 'package:dio/dio.dart';
import 'package:flutter_example/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_dio.g.dart';

@Riverpod(keepAlive: true)
Dio appDio(AppDioRef ref) {
  final dio = Dio();
  dio.options.headers['Authorization'] = 'Bearer ${Env.tmdbAccessToken}';
  dio.interceptors.add(LogInterceptor(
    request: true,
    responseBody: true,
    requestBody: true,
  ));
  return dio;
}
