import 'package:coffee_shop/core/model/coffee.model.dart';
import 'package:coffee_shop/modules/menu/widgets/menu_list_tile.widget.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final List<Coffee> coffees;

  const MenuList({
    @required this.coffees
  }) : assert(
    coffees != null && coffees.length > 0,
    "The list of coffees must not be null"
  );

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: coffees.length,
      itemBuilder: (_, index) {
        return MenuListTile(
          title: coffees[index].title,
          icon: Image.asset(
            "assets/icons/${coffees[index].title}.png"
          ),
          onTap: () => Navigator.of(context).pushNamed("/coffee", arguments: coffees[index])
        );
      },
      separatorBuilder: (_, __) => Divider(),
    );
  }
}