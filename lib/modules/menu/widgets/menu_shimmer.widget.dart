import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MenuShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(8, (index){
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 24
          ),
          child: Shimmer(
            period: Duration(milliseconds: 1000),
            gradient: LinearGradient(colors: [
              Colors.grey.withOpacity(0.5),
              Colors.grey.withOpacity(0.3),
              Colors.grey.withOpacity(0.5)
            ], stops: [
              0.25,
              0.5,
              0.75
            ]),
            direction: ShimmerDirection.ltr,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}