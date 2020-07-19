import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// A generic counter
///
/// It can receive a [int] for the initial value.
/// it requires two callbacks: First, the [onMinusTapped] that
/// is a function that is called when the minus button is tapped
/// to decrease the value. Second, the [onPlusTapped] that is
/// called whenever the plus button is tapped to increase the
/// counter value
class CoffeishCounter extends HookWidget {
  final int initialCount;
  final ValueSetter<int> onMinusTapped;
  final ValueSetter<int> onPlusTapped;

  const CoffeishCounter({
    this.initialCount = 0,
    @required this.onMinusTapped,
    @required this.onPlusTapped
  });
  
  @override
  Widget build(BuildContext context) {
    final counter = useState(initialCount);

    return Row(
      children: <Widget>[
        GestureDetector(
          child: Image.asset(
            "assets/icons/less.png",
            color: Theme.of(context).textTheme.headline1.color,
            height: 10,
            width: 10,
          ),
          onTap: (){
            if (counter.value >= 0) {
              counter.value--;
            
              onMinusTapped(counter.value);
            }
          },
        ),
        const SizedBox(width: 5,),
        Text(
          "${counter.value}",
          style: TextStyle(
            color: Theme.of(context).primaryColor
          ),
        ),
        const SizedBox(width: 5,),
        GestureDetector(
          child: Image.asset(
            "assets/icons/plus.png",
            color: Theme.of(context).textTheme.headline1.color,
          ),
          onTap: (){
            counter.value++;

            onPlusTapped(counter.value);
          },
        )
      ],
    );
  }
}