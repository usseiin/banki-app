import 'package:banki_app/features/home_screen/screens/send_money_screen/send_money_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class TransContainer extends StatelessWidget {
  const TransContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TransactionContanerBtn(
            icon: Icons.add,
            onClicked: () {
              // TODO
            },
            label: 'Add money',
          ),
          TransactionContanerBtn(
            icon: Icons.double_arrow,
            onClicked: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SendMoneycreen(),
                ),
              );
            },
            label: 'Send money',
          ),
          TransactionContanerBtn(
            icon: Icons.more,
            onClicked: () {
              // TODO
            },
            label: 'More',
          ),
        ],
      ),
    );
  }
}

class TransactionContanerBtn extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onClicked;
  const TransactionContanerBtn({
    Key? key,
    required this.icon,
    required this.label,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Column(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(color: BColor.gblue),
            child: Icon(icon),
          ),
          const SizedBox(height: 5),
          Text(label)
        ],
      ),
    );
  }
}
