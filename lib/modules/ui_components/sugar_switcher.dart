import 'package:coffee_shop/modules/ui_components/coffeish_switcher.dart';
import 'package:flutter/material.dart';

/// A Switcher for sugar
/// 
/// It can receive an int for [initialIndex] and
/// requires a [onSugarSelected] callback, that is
/// called whenever the switcher value is changed
class SugarSwitcher extends StatelessWidget {
  final int initialIndex;
  final ValueSetter<int> onSugarSelected;

  const SugarSwitcher({
    this.initialIndex = 0,
    @required this.onSugarSelected
  });

  @override
  Widget build(BuildContext context) {
    return CoffeishSwitcher(
      length: 4,
      builder: (selectedIndex, index) => Image.asset(
        _iconNames[index],
        height: 24,
        color: selectedIndex == index ? Theme.of(context).textTheme.headline1.color : Colors.grey[200],
      ),
      onSelectedOption: onSugarSelected,
    );
  }

  List<String> get _iconNames => [
    "assets/icons/no-sugar.png",
    "assets/icons/sugar1.png",
    "assets/icons/sugar2.png",
    "assets/icons/sugar3.png"
  ];
}