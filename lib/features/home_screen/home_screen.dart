import 'package:banki_app/constants/constants.dart';
import 'package:banki_app/models/user.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserStream _userStream = UserStream();

  @override
  void dispose() {
    _userStream.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BColor.gblue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                HomeTopBar(userStream: _userStream),
                const SizedBox(height: 15),
                const AccountStatusContainer(),
                const SizedBox(height: 15),
                const AccountsRow(),
                const SizedBox(height: 15),
                const TransContainer(),
                const SizedBox(height: 15),
                const TransactionList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Transaction',
              style: TextStyle(fontSize: 20),
            ),
            const Expanded(child: SizedBox()),
            TextButton(
              onPressed: () {
                // TODO;
              },
              child: const Text('See all'),
            ),
          ],
        ),
        ...List.generate(
          5,
          (index) => const ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8),
            leading: Icon(Icons.fastfood),
            title: Text('Food'),
            trailing: Text('\$16'),
          ),
        ),
      ],
    );
  }
}

class TransContainer extends StatelessWidget {
  const TransContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
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
            label: 'Send money',
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
    );
  }
}

class TransactionContanerBtn extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onClicked;
  const TransactionContanerBtn({
    Key? key,
    required this.icon,
    required this.label,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(color: BColor.gblue),
          child: Icon(icon),
        ),
        const SizedBox(height: 5),
        Text(label)
      ],
    );
  }
}
