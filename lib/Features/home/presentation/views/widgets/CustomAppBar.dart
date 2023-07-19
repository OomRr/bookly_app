import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,),
      child: Row(
        children: [
          Image.asset(AsssetsData.logoPath,height: 18),
          const Spacer(),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.search),
              iconSize: 24),
        ],
      ),
    );
  }
}