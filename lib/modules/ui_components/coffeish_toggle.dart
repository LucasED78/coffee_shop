import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef CoffeishToggleBuilder = Widget Function(bool);

/// A generic toggle
///
/// It can receive a [bool] for the initial state.
/// It requires a [CoffeishToggleBuilder] that is a
/// function that returns a widget and receives a
/// [bool] parameter that indicates if the state is true
/// or false
/// Also, you must pass a [onToggle] function that is a
/// callback that is called whenever the toggle value
/// changes
class CoffeishToggle extends HookWidget {
  final bool initialState;
  final ValueSetter<bool> onToggle;
  final CoffeishToggleBuilder builder;

  const CoffeishToggle({
    this.initialState = false,
    @required this.onToggle,
    @required this.builder
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = useState(initialState);
    
    return InkWell(
      child: builder(isSelected.value),
      onTap: () {
        isSelected.value = !isSelected.value;

        onToggle(isSelected.value);
      },
    );
  }
}