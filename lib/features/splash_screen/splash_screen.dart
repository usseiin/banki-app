import 'package:banki_app/constants/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = "/splash-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BColor.dblue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/banki_icon2.png', width: 60),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Banki',
              style: TextStyle(fontSize: 45, fontFamily: Lato.bold),
            ),
          ],
        ),
      ),
    );
  }
}
