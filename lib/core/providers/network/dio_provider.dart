// import 'package:dio/dio.dart';
// import 'package:digital_wallet/core/configs/env.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'dio_provider.g.dart';

// @Riverpod(keepAlive: true)
// Dio dio(DioRef ref) {
//   final options = BaseOptions(
//       baseUrl: Env.baseUrl,
//       connectTimeout: ApiConfig.timeout,
//       receiveTimeout: ApiConfig.timeout,
//       contentType: 'application/json',
//       );

//   return Dio(options)
//     ..interceptors.addAll([
//       // if (ApiConfig.enableLogging)
//       //   LogInterceptor(
//       //     responseBody: true,
//       //   ),
//       _AuthenticationInterceptor(),
//     ]);
// }

// class _AuthenticationInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     handler.next(options);
//   }

//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     handler.next(response);
//   }
// }
