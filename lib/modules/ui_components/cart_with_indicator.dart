import 'package:flutter/material.dart';

class CartWithIndicator extends StatelessWidget {
  final VoidCallback onTap;

  const CartWithIndicator({
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: <Widget>[
          Icon(
            Icons.shopping_cart,
            size: 36,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10000)
              ),
              child: Text("10"),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}