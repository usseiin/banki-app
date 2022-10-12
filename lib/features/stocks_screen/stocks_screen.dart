import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/widgets.dart';

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
              children: const [
                TopContainer(),
                StocksContainer(title: 'Investments'),
                StocksContainer(title: 'Stocks Option'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
