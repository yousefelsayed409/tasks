import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/utils/app_color.dart';
import 'package:tasks/core/utils/app_text_style.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 120.h),
               Text(
                "OTP Verification",
                style: AppStyles.textStyle18,
              ),
              SizedBox(height: 20.h),
              const Text("We sent your code to +1 898 860 ***"),
              buildTimer(),
              SizedBox(height: 20.h),
              const OtpForm(),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: AppColors.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
