import 'package:flutter/material.dart';

/// A generic button
///
/// You can control its dimension by passing a
/// [double] for [width] and [height].
/// You can control the shape by passing a [ShapeBorder]
/// into the [shape] paremeter. The default value is a
/// slightly rounded button.
/// The [child] is a [String] that is placed on the button.
/// The [onPressed] is the function that will be called when
/// the button is pressed
class CoffeishButton extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final ShapeBorder shape;
  final VoidCallback onPressed;

  const CoffeishButton({
    this.width = 1,
    this.height = 60,
    this.shape,
    @required this.child,
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: FractionallySizedBox(
        widthFactor: width,
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          shape: shape ?? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: child,
          onPressed: onPressed,
        ),
      ),
    );
  }
}