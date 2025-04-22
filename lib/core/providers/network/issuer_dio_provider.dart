import 'package:digital_wallet/core/configs/env.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'issuer_dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio issuerDio(Ref ref) {
  final options = BaseOptions(
    baseUrl: Env.vciIssuerUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    contentType: 'application/json',
  );

  return Dio(options)
    ..interceptors.addAll([_AuthenticationInterceptor(), if (Env.isDebug) LogInterceptor(responseBody: true)]);
}

class _AuthenticationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
