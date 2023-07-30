import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_cicular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';

class BookDetailsListViewItem extends StatelessWidget {
  const BookDetailsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if(state is SimilarBooksSuccess) {
      return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: (){
                  GoRouter.of(context).push(
                    '/bookDetailsView',
                    extra: state.books[index],
                  );
                },
                  child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail?? '')),
            );
          }),
    );
    } else if (state is SimilarBooksFailure) {
      return CustomErrorWidget(errorMessage: state.errorMessage);
    } else {
      return const CustomLoadingIndicator();
    }
  },
);
  }
}
