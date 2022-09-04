import 'package:flutter/material.dart';

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
