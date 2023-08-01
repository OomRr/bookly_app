import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styls.dart';

class BooksListVIewItem extends StatelessWidget {
  const BooksListVIewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          '/bookDetailsView',
          extra: bookModel,
        );
      },
      child: SizedBox(
        width: 350,
        height: 140,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(bookModel.volumeInfo.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.titleStyle20
                              .copyWith(fontFamily: 'GTSectraFine'))),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(bookModel.volumeInfo.authors?.first??'',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.titleStyle14.copyWith(
                        color: Colors.grey,


                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text('FREE',
                          style: Styles.titleStyle20.copyWith(
                            fontWeight: FontWeight.w900,
                          )),
                      const SizedBox(
                        width: 60,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          bookModel.volumeInfo.publishedDate!,
                          style: Styles.titleStyle16,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}