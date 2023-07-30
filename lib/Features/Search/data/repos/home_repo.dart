import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepoSearch {
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String searchKey});
}
