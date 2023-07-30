import 'package:bookly_app/Features/Search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      if (state is SearchBooksSuccess) {
        return ListView.builder(
            itemCount: state.books.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: BooksListVIewItem(bookModel: state.books[index]),
              );
            });
      } else if (state is SearchBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return const Icon(Icons.menu_book_outlined,size: 100,);
      }
    });
  }
}
