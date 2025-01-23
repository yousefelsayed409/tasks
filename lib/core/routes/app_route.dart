import 'package:flutter/material.dart';


abstract class AppRoute {
  static const signInScreen = 'SignInScreen';
  static const signUpScreen = 'SignUpScreen';
  static const forgetpasswordScreen = 'ForgotPasswordScreen';
  static const otpScreen = 'OtpScreen';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
     

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defind${settings.name}'),
                  ),
                ));
    }
  }
}
