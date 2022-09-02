import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../models/user.dart';

class AccountsRow extends StatelessWidget {
  const AccountsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundColor: BColor.dblue,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
            const Text('search')
          ],
        ),
        ...List.generate(
          5,
          (index) => Column(
            children: const [
              CircleAvatar(
                radius: 20,
              ),
              Text('data')
            ],
          ),
        ),
      ],
    );
  }
}

class AccountStatusContainer extends StatelessWidget {
  const AccountStatusContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Available balance',
                style: TextStyle(fontSize: 20),
              ),
              Expanded(child: SizedBox()),
              Icon(Icons.circle, size: 45)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                '\$ 19600',
                // TODO: add account
                style: TextStyle(fontSize: 20),
              ),
              Expanded(child: SizedBox()),
              Text(
                'Us Dollar',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    Key? key,
    required UserStream userStream,
  })  : _userStream = userStream,
        super(key: key);

  final UserStream _userStream;

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
            return const Text('data');
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
