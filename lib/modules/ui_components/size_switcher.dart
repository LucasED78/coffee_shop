import 'package:coffee_shop/modules/ui_components/coffeish_switcher.dart';
import 'package:flutter/material.dart';

/// A Switcher for Size
/// 
/// It can receive an int for [initialIndex] and
/// requires a [onSizeSelected] callback, that is
/// called whenever the switcher value is changed
class SizeSwitcher extends StatelessWidget {
  final int intialIndex;
  final ValueSetter<int> onSizeSelected;

  const SizeSwitcher({
    this.intialIndex = 0,
    @required this.onSizeSelected
  });

  @override
  Widget build(BuildContext context) {
    return CoffeishSwitcher(
      initialIndex: intialIndex,
      onSelectedOption: onSizeSelected,
      length: 3,
      builder: (selectedIndex, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5
          ),
          child: Image.asset(
            "assets/icons/cup.png",
            height: _iconSizes[index],
            color: selectedIndex == index ? Theme.of(context).textTheme.headline1.color : Colors.grey[200]
          ),
        );
      },
    );
  }
  
  List<double> get _iconSizes {
    return [
      30,
      36,
      40
    ];
  }
}