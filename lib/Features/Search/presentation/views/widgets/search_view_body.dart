import 'package:bookly_app/Features/Search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styls.dart';
import 'custom_search_textField.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          CustomSearchTextField(),
          SizedBox(
            height: 12,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'search result',
                style: Styles.titleStyle18,
              )),
          SizedBox(
            height: 12,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
