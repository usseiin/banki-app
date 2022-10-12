import 'package:flutter/material.dart';

class StockTopBar extends StatelessWidget with PreferredSizeWidget {
  const StockTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: CircleAvatar(
          // maxRadius: 5,
          child: Icon(Icons.person),
        ),
      ),
      title: const Text('Stocks'),
      actions: const [
        Icon(Icons.person_outline),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.notifications_outlined),
        SizedBox(
          width: 20,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
