import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: BestSellerListItem(),
          );
        });
  }
}
