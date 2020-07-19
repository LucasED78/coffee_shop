import 'package:coffee_shop/modules/ui_components/size_switcher.dart';
import 'package:flutter/material.dart';

class MenuDetailsRow extends StatelessWidget {
  final String title;
  final Widget trailing;
  final String subtitle;
  final Padding padding;

  const MenuDetailsRow({
    @required this.title,
    this.trailing,
    this.subtitle = "",
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 24
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(width: 30,),
              if (trailing != null) trailing
            ],
          ),
          const SizedBox(height: 5,),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}