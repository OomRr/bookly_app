import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer shimmerLoading({required double w,required double h}) {
  return Shimmer.fromColors(
      baseColor: Colors.grey.withOpacity(0.25),
      highlightColor: Colors.white.withOpacity(0.6),
      period: const Duration(seconds: 2),
      child: Container(
        height: 180,
        child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 2),
                  child: Container(
                    height: h,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.withOpacity(0.9),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
              ],
            );
          },
        ),
      ));
}

Shimmer shimmerLoading2() {
  return Shimmer.fromColors(
      baseColor: Colors.grey.withOpacity(0.25),
      highlightColor: Colors.white.withOpacity(0.6),
      period: const Duration(seconds: 2),
      child: Container(
        height: 180,
        child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 26,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.withOpacity(0.25),
                      highlightColor: Colors.white.withOpacity(0.6),
                      period: const Duration(seconds: 2),
                      child: Container(
                        height: 100,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(flex: 3, child: Text('')),
                  Expanded(
                    flex: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.25),
                          highlightColor: Colors.white.withOpacity(0.6),
                          period: const Duration(seconds: 2),
                          child: Container(
                            width: 220,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.25),
                          highlightColor: Colors.white.withOpacity(0.6),
                          period: const Duration(seconds: 2),
                          child: Container(
                            width: 150,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 30,
                                child: Shimmer.fromColors(
                                    baseColor: Colors.grey.withOpacity(0.25),
                                    highlightColor:
                                        Colors.white.withOpacity(0.6),
                                    period: const Duration(seconds: 2),
                                    child: Container(
                                      width: 100,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.grey.withOpacity(0.9),
                                      ),
                                    ))),
                            const SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              flex: 30,
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey.withOpacity(0.25),
                                highlightColor: Colors.white.withOpacity(0.6),
                                period: const Duration(seconds: 2),
                                child: Container(
                                  width: 100,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.withOpacity(0.9),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ));
}
