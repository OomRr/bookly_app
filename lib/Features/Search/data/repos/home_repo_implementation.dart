import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImpSearch implements HomeRepoSearch {
  final ApiService apiService;

  HomeRepoImpSearch(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({required String searchKey}) async {
    try {
      var data = await apiService.get(
          endPint: 'volumes?Sorting=relevance&q=subject:$searchKey');
      List<BookModel> books = [];
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          'no result'
        ),
      );
    }
  }
}
