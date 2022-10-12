import 'package:banki_app/features/stocks_screen/screens/invest_screen/invest_screen.dart';
import 'package:flutter/material.dart';

import '../../home_screen/widgets/widgets.dart' show TransactionContanerBtn;

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '\$16000',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: const [
                      Text('+140'),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_downward),
                      Text('2.54')
                    ],
                  )
                ],
              ),
              const Expanded(child: SizedBox()),
              const CircleAvatar(
                radius: 20,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
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
                      builder: (context) => const InvestScreen(),
                    ),
                  );
                },
                label: 'Invest',
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
        ],
      ),
    );
  }
}
