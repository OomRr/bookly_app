import 'package:bookly_app/Features/Search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styls.dart';
import '../../../../../core/widgets/custom_cicular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import 'custom_search_textField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          CustomSearchTextField(),
          const SizedBox(
            height: 12,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'search result',
                style: Styles.titleStyle18,
              )),
          const SizedBox(
            height: 12,
          ),
          const Expanded(
            child:SearchResultListView()

          ),
        ],
      ),
    );
  }
}
