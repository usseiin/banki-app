import 'package:flutter/material.dart';

class BankAccountContainer extends StatelessWidget {
  const BankAccountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Bank Accounts',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'See all',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                ...List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 16,
                      ),
                      title: const Text('FirstName SecondName'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [Text('dataaa..'), Text('dataaa..')],
                      ),
                      trailing: const Text('USD'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
