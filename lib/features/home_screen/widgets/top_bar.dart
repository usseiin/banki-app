import 'package:flutter/material.dart';

import '../../../models/user.dart';

class HomeTopBar extends StatefulWidget {
  const HomeTopBar({Key? key}) : super(key: key);

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  final UserStream _userStream = UserStream();

  @override
  void dispose() {
    _userStream.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(child: Icon(Icons.person)),
        const SizedBox(
          width: 10,
        ),
        StreamBuilder<Object>(
          stream: _userStream.userStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final user = snapshot.data as User;
              return Text('Hi \n${user.name.split(' ').first}');
            }
            return const CircularProgressIndicator();
          },
        ),
        const Expanded(child: SizedBox()),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(Icons.person_outline),
        ),
        const Icon(Icons.notifications_outlined)
      ],
    );
  }
}
