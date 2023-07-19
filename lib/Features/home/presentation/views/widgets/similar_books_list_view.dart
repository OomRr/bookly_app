import 'package:flutter/material.dart';

import 'Custom_book_item.dart';
class BookDetailsListViewItem extends StatelessWidget {
  const BookDetailsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.15 ,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index)
          {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(),
            );
          }
      ),
    );
  }
}
