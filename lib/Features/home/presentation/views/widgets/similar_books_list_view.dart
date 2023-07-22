import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BookDetailsListViewItem extends StatelessWidget {
  const BookDetailsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: BestSellerListItem(),
            );
          }),
    );
  }
}
