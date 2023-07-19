import 'package:flutter/material.dart';
class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed:
            () {},
            icon: const Icon(Icons.clear_outlined)),
        IconButton(onPressed:
            () {},
            icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}