import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/widget/constants.dart';
import 'package:tasks/core/widget/csutom_elevated_button.dart';
import 'package:tasks/core/widget/csutom_form_field.dart';
import 'package:tasks/core/widget/data_of_birth_form_field.dart';
import 'package:tasks/core/widget/form_error.dart';
import 'package:tasks/core/widget/phone_number_form_field.dart';
import 'package:tasks/core/widget/social_card.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool remember = false;

  final List<String?> errors = [];

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomFormField(
              text: 'Full Name',
              hintText: "Example@example.Com",
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: knameNullError);
                  return "";
                }
                return null;
              },
            ),
           
            CustomFormField(
             text: 'Email',
              hintText: "Example@example.Com",
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kEmailNullError);
                  return "";
                } else if (!emailValidatorRegExp.hasMatch(value)) {
                  addError(error: kInvalidEmailError);
                  return "";
                }
                return null;
              },
            ),
            PhoneNumberFormField(
                controller: phoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DateOfBirthFormField(
                controller: dobController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your date of birth';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
            
            CustomFormField(
             text: 'Password ',
              hintText: "**********",
              obscureText: true,
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
            
            CustomFormField(
             text: 'Confirm Password',
              hintText: "**********",
              obscureText: true,
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
            const Align(
              alignment: Alignment.center,
              child: Text('    By continuing, you agree to\nTerms of Use and Privacy Policy'),
            ),
            SizedBox(height: 10.h),
            FormError(errors: errors),
            SizedBox(height: 10.h),
           
            CustomElevatedButton(
              height: 50.h,
              width: 210,
              text: 'Sign Up',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Handle form submission
                }
              },
            ),
            
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

