import 'package:banki_app/constants/constants.dart';
import 'package:banki_app/features/auth_screen/sign_up.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(child: SizedBox()),
              Center(
                child: Container(
                  color: Colors.blue,
                  height: 250,
                  width: 300,
                  child: const Text('Images'),
                ),
              ),
              const Text(
                "Manage Your \nFinances All In One \nPlace",
                style: TextStyle(
                  fontFamily: Lato.bold,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 16),
              AuthButton(
                text: 'Let Get Started',
                onClick: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  const AuthButton({
    Key? key,
    required this.text,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      // TODO: get Start function
      // navigate to Auth Screen

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(BColor.dblue),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
