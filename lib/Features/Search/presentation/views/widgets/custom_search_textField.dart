import 'package:bookly_app/Features/Search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (data){
        BlocProvider.of<SearchCubit>(context).fetchSearchBooks(searchKey: data);
      },
          controller: searchController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'Search',
              suffixIcon: IconButton(
                  onPressed: ()
                  {
                    BlocProvider.of<SearchCubit>(context).fetchSearchBooks(searchKey: searchController.text);
                    searchController.clear();
                  },
                  icon: const Icon(
                      FontAwesomeIcons.magnifyingGlass, size: 22))),
        );


  }
}
