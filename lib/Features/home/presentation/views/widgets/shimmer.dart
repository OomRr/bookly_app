import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class loadingsh extends StatefulWidget {
  const loadingsh({super.key});

  @override
  State<loadingsh> createState() => _loadingshState();
}

class _loadingshState extends State<loadingsh> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Shimmer shimmerLoading() {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[300]!,
        child: ListView(
            children:[Container(
              width: 40,
              height: 70,
              color: Colors.white,
            ),
              const SizedBox(width: 20,),]
        )
    );
  }
}
