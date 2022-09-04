import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../home_screen/widgets/transaction_container.dart';

class StocksScreen extends StatelessWidget {
  const StocksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar( child: Icon(Icons.person)),
        title: const Text('Stock'),
        actions: const [
          Icon(Icons.person_outline),
          Icon(Icons.notifications_outlined),
        ],
      ),
      backgroundColor: BColor.gblue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const StockTopBar(),
                const SizedBox(height: 15),
                Container(
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
                              // TODO
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StockTopBar extends StatelessWidget {
  const StockTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(child: Icon(Icons.person)),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Center(
            child: Text(
              'Stocks',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(Icons.person_outline),
        ),
        Icon(Icons.notifications_outlined),
      ],
    );
  }
}
