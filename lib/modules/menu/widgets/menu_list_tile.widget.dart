import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onTap;

  const MenuListTile({
    @required this.title,
    @required this.icon,
    @required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 24
      ),
      leading: icon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Theme.of(context).primaryColor
      ),
      onTap: onTap,
    );
  }
}