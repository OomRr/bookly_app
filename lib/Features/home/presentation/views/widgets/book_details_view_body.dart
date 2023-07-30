import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_book_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book_details_app_bar.dart';
import 'books_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                const BookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width.width * .25),
                  child:  CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',),
                ),
                const SizedBox(
                  height: 43,
                ),
                Text(
                  bookModel.volumeInfo.title!,
                  textAlign: TextAlign.center,
                  style: Styles.titleStyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(bookModel.volumeInfo.authors?.first??'',

                      style: Styles.titleStyle18.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(bookModel.volumeInfo.categories?.first??'',style: Styles.titleStyle16,),
                const SizedBox(
                  height: 25,
                ),
                 BooksActions(bookModel: bookModel),
                const SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You may also like',
                    style: Styles.titleStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),

              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Spacer(),
              BookDetailsListViewItem(),
              Spacer()
            ],
          ),
        ),
      ],
    );
  }
}
