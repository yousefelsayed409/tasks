import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/utils/app_color.dart';
import 'package:tasks/core/utils/app_text_style.dart';



class CustomHaveAnAcountWidget extends StatelessWidget {
  final String To;
  final String title;
  void Function()? onTap ;
   CustomHaveAnAcountWidget({
    Key? key,
    required this.title ,
    required this.To,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppStyles.textStyle16.copyWith(fontWeight: FontWeight.normal),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            To,
            style: AppStyles.textStyle18.copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
