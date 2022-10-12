import 'package:flutter/material.dart';

class StocksContainer extends StatelessWidget {
  const StocksContainer({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          height: 36,
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              ...List.generate(
                4,
                (index) => ListTile(
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
