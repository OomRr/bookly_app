import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styls.dart';
import 'book_rating_raw.dart';
class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        GoRouter.of(context).push('/bookDetailsView');
      },
      child: SizedBox(
        width: 350,
        height: 140,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.4/4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.red,
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AsssetsData.testPhoto)),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text('Harry Potter and the Goblet of Fire Goblet of Fir',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.titleStyle20.copyWith(
                              fontFamily:'GTSectraFine'
                          ))
                  ),
                  const SizedBox(height: 3,),
                  Text('E.Omar Abo-zaid',style: Styles.titleStyle14.copyWith(color: Colors.grey)),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('19.99',style: Styles.titleStyle20.copyWith(
                        fontWeight: FontWeight.w900,
                      )),
                      const Spacer(),
                      const RatingRow(),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
