import 'package:flutter/material.dart';
import 'package:tasks/feature/auth/signin/presentation/view/signin_view.dart';
import 'package:tasks/feature/auth/signup/presentation/view/sign_up_view.dart';


abstract class AppRoute {
  static const signInScreen = 'SignInScreen';
  static const signUpScreen = 'SignUpScreen';
  static const forgetpasswordScreen = 'ForgotPasswordScreen';
  static const otpScreen = 'OtpScreen';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signInScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
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
