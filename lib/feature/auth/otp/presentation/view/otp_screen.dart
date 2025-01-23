import 'package:flutter/material.dart';
import 'package:tasks/core/utils/app_color.dart';
import 'package:tasks/core/utils/app_text_style.dart';

import '../widget/body.dart';



class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back, color: AppColors.black)),
        title: Text(
          "OTP Verification",
          style: AppStyles.textStyle23,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
