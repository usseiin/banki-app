import 'package:banki_app/features/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home-screen';
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> items = [
    const HomeScreen(),
    const Center(child: Text('Stocks')),
    const Center(child: Text('Reports')),
    const Center(child: Text('Cards'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.auto_graph_outlined,
              color: Colors.black,
            ),
            label: 'Stocks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.report,
              color: Colors.black,
            ),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              color: Colors.black,
            ),
            label: 'Cards',
          ),
        ],
      ),
    );
  }
}
