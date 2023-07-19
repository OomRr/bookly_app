import 'package:flutter/material.dart';
import 'Custom_book_item.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3 ,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index)
          {
            return CustomBookImage();
          }
      ),
    );
  }
}