import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class InvestScreen extends StatelessWidget {
  const InvestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invest'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                StockViewRow(),
                TrendingContainer(title: 'Trending Stocks'),
                NewsContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
