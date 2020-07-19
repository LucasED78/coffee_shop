import 'package:flutter/material.dart';

class CoffeishAppBar extends PreferredSize {
  final String title;
  final List<Widget> actions;
  final Widget leading;

  const CoffeishAppBar({
    @required this.title,
    this.actions,
    this.leading
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: leading,
      title: Text(
        title,
        style: Theme.of(context).appBarTheme.textTheme.headline1,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}