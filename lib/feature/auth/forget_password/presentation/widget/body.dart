import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/utils/app_text_style.dart';
import 'package:tasks/core/widget/csutom_elevated_button.dart';
import 'package:tasks/core/widget/csutom_form_field.dart';
import 'package:tasks/core/widget/form_error.dart';




class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              SizedBox(height: 35.h),
              Text("Forgot Password", style: AppStyles.textStyle28),
              SizedBox(height: 20.h),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.h),
              const ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
         CustomFormField(
            labelText: 'Email',
            hintText: 'Enter your email',),
          const SizedBox(height: (20)),
          FormError(errors: errors),
          const SizedBox(height: 20),
         
          const SizedBox(height: 20), 
CustomElevatedButton(
  height: 50.h,
  onPressed: () {
     
  },
  text: 'Continue'),
         
          SizedBox(height: 15.h),
         
        ],
      ),
    );
  }
}
