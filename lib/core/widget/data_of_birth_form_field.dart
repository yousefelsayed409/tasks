import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DateOfBirthFormField extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const DateOfBirthFormField({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  _DateOfBirthFormFieldState createState() => _DateOfBirthFormFieldState();
}

class _DateOfBirthFormFieldState extends State<DateOfBirthFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      readOnly: true,
      validator: widget.validator,
      decoration: const InputDecoration(
        hintText: 'Select date of birth',
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.calendar_today),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime(2000),
          firstDate: DateTime(1900), 
          lastDate: DateTime.now(),);
        if (pickedDate != null) {
          setState(() {
            widget.controller.text = DateFormat('yyyy-MM-dd').format(pickedDate); 
          });
        }
      },
    );
  }
}
