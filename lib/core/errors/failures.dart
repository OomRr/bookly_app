import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('timeout');

      case DioExceptionType.sendTimeout:
        return ServerFailure('timeout');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('timeout');

      case DioExceptionType.badCertificate:
        return ServerFailure('bad certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('request is canceled , try again');

      case DioExceptionType.connectionError:
        return ServerFailure('connection error');

      case DioExceptionType.unknown:
        if(dioException.message!=null){
          if(dioException.message!.contains('SocketException'))
          {
            return ServerFailure('No Internet Connection');
          }
        }
        return ServerFailure('unexpected error, try again');
        default:
          return ServerFailure('unknown error, try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 401 || statusCode == 402 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('page not found');
    } else if (statusCode == 500) {
      return ServerFailure('Server Error, try later');
    } else {
      return ServerFailure('unknown error');
    }
  }
}
