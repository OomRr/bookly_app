import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({this.mainAxisAlignment = MainAxisAlignment.start,super.key, required this.cat});
  final MainAxisAlignment mainAxisAlignment;
  final String cat;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxisAlignment, children: [

      const SizedBox(
        width: 6.3,
      ),
      Text(
        cat,
        style: Styles.titleStyle16,
        overflow: TextOverflow.fade,
      ),

    ]);
  }
}
