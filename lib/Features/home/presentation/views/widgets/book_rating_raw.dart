import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class RatingRow extends StatelessWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children:  [
          const Icon(FontAwesomeIcons.solidStar,
            color: Colors.amberAccent,
          ),
          const SizedBox(width: 6.3,),
          const Text('4.8',style: Styles.titleStyle16,),
          const SizedBox(width: 5,),
          Text('(2048)',style: Styles.titleStyle14.copyWith(
            color: Colors.grey
          )),
        ]
    );
  }
}