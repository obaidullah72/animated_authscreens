import 'package:flutter/material.dart';
import 'package:login_signup_animated_screen/screen/login_screen.dart';
import 'package:login_signup_animated_screen/screen/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLogin = true;

  void toggleAuth() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: showLogin
          ? LoginScreen(
              onSignUpTap: toggleAuth,
              key: ValueKey('login'),
            )
          : SignupScreen(
              onLoginTap: toggleAuth,
              key: ValueKey('signup'),
            ),
    );
  }
}
