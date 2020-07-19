import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef SwitcherBuilder = Widget Function(int, int);

/// A generic switcher
///
/// It can receive an [initialIndex] that is optional,
/// but it requires a [length] to determine the items
/// quantity in the switcher. The [builder] is an
/// [SwitcherBuilder] that is a function that returns
/// a widget and pass the currentIndex and the item Index
/// via parameter. Last, required a [onSelectedOption] that
/// os a callback function that is called whenever the
/// switcher value is modified
class CoffeishSwitcher extends HookWidget {
  final int initialIndex;
  final int length;
  final ValueSetter<int> onSelectedOption;
  final SwitcherBuilder builder;

  const CoffeishSwitcher({
    this.initialIndex = 0,
    @required this.length,
    @required this.builder,
    @required this.onSelectedOption
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return Row(
      children: List.generate(length, (index){
        return InkWell(
          child: builder(currentIndex.value, index),
          onTap: (){
            currentIndex.value = index;

            onSelectedOption(index);
          },
        );
      })
    );
  }
}