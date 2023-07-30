import 'package:bookly_app/Features/Search/data/repos/home_repo.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/data/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  final HomeRepoSearch homeRepo;
  Future<void> fetchSearchBooks({required String searchKey}) async {
    emit(SearchBooksLoading());
    var result = await homeRepo.fetchSearchBooks(searchKey: searchKey);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });

  }
}
