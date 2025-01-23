import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/utils/app_text_style.dart';
import 'package:tasks/core/widget/custpm_have_an_account.dart';
import 'package:tasks/core/widget/social_card.dart';
import 'package:tasks/feature/auth/signup/presentation/view/sign_up_view.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: (20.h)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 7),
                  Text("Welcome  ", style: AppStyles.textStyle28),
                  SizedBox(height: 8.h),
                  const Text(
                    "Please enter your details to proceed",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15.h),
                
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Forgot Password ?",
                      style: AppStyles.textStyle16,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "or sign up with",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocalCard(
                        imageAseetss: Image.asset('assets/Icons/facebook.png'),
                        press: () {},
                      ),
                      SocalCard(
                        imageAseetss: Image.asset('assets/Icons/google.png'),
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  CustomHaveAnAcountWidget(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SignUpScreen();
                            },
                          ),
                        );
                      },
                      title: 'Don’t have an account ?',
                      To: ' SignUp'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
