import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Transaction',
              style: TextStyle(fontSize: 20),
            ),
            const Expanded(child: SizedBox()),
            TextButton(
              onPressed: () {
                // TODO;
              },
              child: const Text('See all'),
            ),
          ],
        ),
        ...List.generate(
          5,
          (index) => const ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8),
            leading: Icon(Icons.fastfood),
            title: Text('Food'),
            trailing: Text('\$16'),
          ),
        ),
      ],
    );
  }
}
