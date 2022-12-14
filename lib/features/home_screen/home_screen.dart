import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BColor.gblue,
      appBar: const HomeTopBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                AccountStatusContainer(),
                SizedBox(height: 15),
                AccountsRow(),
                SizedBox(height: 15),
                TransContainer(),
                SizedBox(height: 15),
                TransactionList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
