import 'package:flutter/material.dart';

import 'features/auth_screen/sign_up.dart';
import 'features/auth_screen/signin.dart';

generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SignInScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      );
    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) {
          return const MaterialApp(
            home: Scaffold(
              body: Text("Page doesn't exit"),
            ),
          );
        },
      );
  }
}
