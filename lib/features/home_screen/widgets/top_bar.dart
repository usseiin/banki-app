import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTopBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: CircleAvatar(child: Icon(Icons.person)),
      ),
      title: const Text('Hi Hassan'),
      centerTitle: false,
      actions: const [
        Icon(Icons.person_outline),
        SizedBox(width: 10),
        Icon(Icons.notifications_outlined),
        SizedBox(width: 20)
      ],
    );
  }
}
