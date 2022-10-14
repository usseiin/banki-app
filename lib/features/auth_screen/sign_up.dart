import 'package:banki_app/features/splash_screen/get_started.dart';
import 'package:flutter/material.dart';

import 'signin.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String routeName = 'signup-screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Create Your Account!',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Form(
                        child: Column(
                          children: [
                            const CustomTextField(
                              label: 'Name',
                              hint: 'Chioma Jennifer',
                            ),
                            const SizedBox(height: 20),
                            const CustomTextField(
                              label: 'Email',
                              hint: 'jeniferdesigner@gmail.com',
                            ),
                            const SizedBox(height: 20),
                            const CustomTextField(
                              label: 'Password',
                              hint: '********',
                              isObscure: true,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5.0, right: 4),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isRemember = !isRemember;
                                      });
                                    },
                                    child: Icon(
                                      isRemember
                                          ? Icons.check_box
                                          : Icons.square_outlined,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Remember me',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      AuthButton(
                        text: 'Sign up',
                        onClick: () {},
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Have an account already? ",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SignInScreen.routeName);
                            },
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
