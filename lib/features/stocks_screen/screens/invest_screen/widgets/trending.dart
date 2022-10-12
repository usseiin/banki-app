import 'package:flutter/material.dart';

class TrendingContainer extends StatelessWidget {
  const TrendingContainer({super.key, required this.title});
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
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
              const Text(
                'See all',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              ...List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.create_sharp),
                    ),
                    title: const Text('title'),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('text1'), Text('text2')],
                    ),
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
