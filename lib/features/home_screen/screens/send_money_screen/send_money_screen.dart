import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class SendMoneycreen extends StatelessWidget {
  const SendMoneycreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Money'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Padding(
              padding: EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundColor: Color(0xffffffff),
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                SearchContainer(),
                BeneficiariesContainer(),
                BankAccountContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
