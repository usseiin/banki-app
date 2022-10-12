import 'package:banki_app/features/auth_screen/sign_up.dart';
import 'package:banki_app/features/splash_screen/get_started.dart';
import 'package:flutter/material.dart';

import '../bottom_nav/app_bottom_nav_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const String routeName = 'signin-screen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Expanded(child: SizedBox()),
              const Text(
                'Welcome  Back!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
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
                    TextButton(
                      onPressed: () {
                        // TODO: forget password
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Forget password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              AuthButton(
                text: 'Sign in',
                onClick: () {
                  Navigator.pushNamed(context, BottomNavigators.routeName);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: navigate to Createaccount screen
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    child: const Text(
                      'Sign Up',
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
      )),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool? isObscure;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hint,
    this.isObscure,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(fontSize: 10),
          textAlign: TextAlign.start,
        ),
        TextFormField(
          obscureText: (widget.isObscure == null) ? false : isObscure,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: widget.hint,
            suffixIcon: widget.isObscure != null
                ? IconButton(
                    icon: Icon(
                      isObscure == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
