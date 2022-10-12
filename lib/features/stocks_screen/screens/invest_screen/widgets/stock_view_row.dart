import 'package:flutter/material.dart';

class StockViewRow extends StatelessWidget {
  const StockViewRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 120),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => const StockView(
          bgColor: Color(0xffffffff),
          title: 'Apple',
          symbol: 'AAPL',
          price: 350.67,
          percent: 4.056,
        ),
      ),
    );
  }
}

class StockView extends StatelessWidget {
  const StockView({
    super.key,
    required this.bgColor,
    required this.title,
    required this.price,
    required this.percent,
    required this.symbol,
  });
  final Color bgColor;
  final String title;
  final String symbol;
  final double price;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration:
          BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(8),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                radius: 16,
              ),
              Text('AAPL')
            ],
          ),
          const Text(
            'Apple',
            textAlign: TextAlign.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('\$$price'), Text('$percent%')],
          )
        ],
      ),
    );
  }
}
