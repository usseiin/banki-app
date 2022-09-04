import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

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
