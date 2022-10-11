import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../home_screen/widgets/transaction_container.dart';

class StocksScreen extends StatelessWidget {
  const StocksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StockTopBar(),
      backgroundColor: BColor.gblue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
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
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  height: 36,
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Investments',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                          child: Icon(Icons.create_sharp),
                        ),
                        title: const Text('title'),
                        subtitle: Row(
                          children: const [
                            Text('subtitle'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('subtitle2')
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [Text('text1'), Text('text2')],
                        ),
                      );
                    },
                    itemCount: 4,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  height: 36,
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Stocks Option',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                          child: Icon(Icons.create_sharp),
                        ),
                        title: const Text('title'),
                        subtitle: Row(
                          children: const [
                            Text('subtitle'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('subtitle2')
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [Text('text1'), Text('text2')],
                        ),
                      );
                    },
                    itemCount: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
