import 'package:flutter/material.dart';
import 'package:tasks/core/utils/app_color.dart';
import 'package:tasks/core/utils/app_text_style.dart';

class CustomFormField extends StatefulWidget {
  final String? labelText;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final String? text;

  const CustomFormField({
    super.key,
    this.labelText,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.text,
  });

  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.text != null)
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.text!,
                style: AppStyles.textStyle13,
              ),
            ),
          ),
        const SizedBox(height: 8),
        TextFormField(
          obscureText: _isObscure,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          decoration: InputDecoration(
            fillColor: AppColors.dayPrimary,
            filled: true,
            labelText: widget.labelText,
            hintText: widget.hintText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none, 
            suffixIcon: widget.obscureText
                ? IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
