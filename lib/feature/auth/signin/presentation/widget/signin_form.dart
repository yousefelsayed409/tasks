import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/widget/constants.dart';
import 'package:tasks/core/widget/csutom_elevated_button.dart';
import 'package:tasks/core/widget/csutom_form_field.dart';
import 'package:tasks/core/widget/form_error.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  bool? remember = false;


  final List<String?> errors = [];

  get kPrimaryColor => null;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
           CustomFormField(
            text: 'Username Or Email',
            hintText: 'example@example.com ',
             validator: (value) {
                if (value!.isEmpty) {
                  addError(error: knameNullError);
                  return "";
                }
                return null;
              },
          ),
          SizedBox(height: 10.h),
           CustomFormField(
            obscureText: true,
         text: 'Password',
            hintText: "*********",
             validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kPassNullError);
                  return "";
                } else if (value.length < 8) {
                  addError(error: kShortPassError);
                  return "";
                }
                return null;
              },
          ),
          SizedBox(height: 10.h),
          
          FormError(errors: errors),
          SizedBox(height: 20.h),
           CustomElevatedButton(
            text: 'Log In',
            height: 50.h,
            width: 210.w,
             onPressed: () {
                if (_formKey.currentState!.validate()) {
              
                } }
          ),
        ],
      ),
    );
  }
}
  
  

