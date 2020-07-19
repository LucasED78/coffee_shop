import 'package:flutter/material.dart';

class CoffeeCover extends StatelessWidget {
  final double width;
  final double height;
  final Widget image;

  const CoffeeCover({
    @required this.image,
    this.width,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: FractionallySizedBox(
        widthFactor: width,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "assets/bg-image.png",
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: image,
            ),
          ],
        ),
      ),
    );
  }
}