import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/utils/app_color.dart';
import 'package:tasks/core/utils/app_text_style.dart';
import 'package:tasks/core/widget/custpm_have_an_account.dart';
import 'package:tasks/core/widget/social_card.dart';
import 'package:tasks/feature/auth/signin/presentation/view/signin_view.dart';



class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SignInScreen();
              }));
            },
            icon: const Icon(Icons.arrow_back, color: AppColors.black)),
        title: Text(
          "Create Account",
          style: AppStyles.textStyle23,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                    
                      SizedBox(height: 20.h),
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
                            imageAseetss:
                                Image.asset('assets/Icons/facebook.png'),
                            press: () {},
                          ),
                          SocalCard(
                            imageAseetss:
                                Image.asset('assets/Icons/google.png'),
                            press: () {},
                          ),
                         
                          SizedBox(height: 10.h),
                        ],
                      ),
                     CustomHaveAnAcountWidget(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SignInScreen();
          },),);
                      },
                      title: 'Already have an account ?' ,To: ' Log in'),
                     SizedBox(height: 20.h),
                    ],
                  ),
                )
          ),
        ),
      );
    
  }
}
