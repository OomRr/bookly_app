import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_book_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating_raw.dart';
import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book_details_app_bar.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size;
    return Column(
      children: [
        const BookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width.width*.22),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43,),
        const Text('The Jungle Book',style: Styles.titleStyle30,),
        const SizedBox(height: 6,),
        Opacity(
          opacity: 0.7,
          child: Text('Rudyard Kipling',style: Styles.titleStyle18
              .copyWith(fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500)),
        ),
        const SizedBox(height: 18,),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
      ],
    );
  }
}

