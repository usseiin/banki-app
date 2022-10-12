import 'package:flutter/material.dart';

class BeneficiariesContainer extends StatelessWidget {
  const BeneficiariesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Beneficiaries',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ...List.generate(
                  4,
                  (index) => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 16,
                      ),
                      title: Text('FirstName SecondName'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
