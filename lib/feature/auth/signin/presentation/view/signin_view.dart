import 'package:flutter/material.dart';
import 'package:tasks/core/utils/app_text_style.dart';

import '../widget/body.dart';

class SignInScreen extends StatelessWidget {
  static const String id = "SignInScreen";

  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Log In",
          style: AppStyles.textStyle23,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
