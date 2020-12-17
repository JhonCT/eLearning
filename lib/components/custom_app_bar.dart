import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color color;

  CustomAppBar({Key key, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: color,
      brightness: Brightness.light,
      leading: IconButton(
        icon: Icon(Icons.chevron_left),
        color: theme.iconTheme.color,
        onPressed: () => Navigator.pushNamed(context, 'categories'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.search,
            color: theme.iconTheme.color,
          ),
        ),
      ],
      title: Text(
        title,
        style: theme.textTheme.bodyText1,
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
