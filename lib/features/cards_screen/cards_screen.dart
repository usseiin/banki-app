import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 26)),
                  child: const Text('Add Card'),
                ),
                const CardsDetailContainer(),
                const TransactionsContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardsDetailContainer extends StatelessWidget {
  const CardsDetailContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            height: 100,
            width: 175,
          ),
          const SizedBox(
            width: double.infinity,
          ),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 4, mainAxisSpacing: 10),
            itemCount: 4,
            itemBuilder: (context, index) {
              return ExtraButton(
                text: dummyText[index],
                icon: dummyIcon[index],
              );
            },
          )
        ],
      ),
    );
  }
}

class ExtraButton extends StatelessWidget {
  const ExtraButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            width: 25,
            height: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
            ),
            child: Icon(icon, size: 20),
          ),
          Text(text)
        ],
      ),
    );
  }
}

const List<String> dummyText = <String>[
  'Card Info',
  'Card Options',
  'Withdraw',
  'Converter'
];

const List<IconData> dummyIcon = <IconData>[
  Icons.info,
  Icons.square,
  Icons.width_wide_sharp,
  Icons.local_convenience_store
];

class TransactionsContainer extends StatelessWidget {
  const TransactionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Transaction'), Text('See all')],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                ...List.generate(
                  5,
                  (index) => const ListTile(
                    leading: Icon(Icons.add_a_photo),
                    title: Text('text1'),
                    trailing: Text('\$16'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
