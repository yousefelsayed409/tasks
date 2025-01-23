
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberFormField extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const PhoneNumberFormField({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  _PhoneNumberFormFieldState createState() => _PhoneNumberFormFieldState();
}

class _PhoneNumberFormFieldState extends State<PhoneNumberFormField> {
  String _countryCode = '+1';  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CountryCodePicker(
          onChanged: (countryCode) {
            setState(() {
              _countryCode = countryCode.dialCode ?? '+1';
            });
          },
          initialSelection: 'US',
          favorite: ['+1', 'EG', 'SA'],
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            controller: widget.controller,
            keyboardType: TextInputType.phone,
            validator: widget.validator,
            decoration: const InputDecoration(
              hintText: 'Enter phone number',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}