import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/utils/app_color.dart';
import 'package:tasks/core/utils/app_text_style.dart';
import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    this.backgroundColor,
    this.controller,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;
  final PageController? controller;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
        height: height ?? 62.h,
        width: width ?? double.maxFinite,
        margin: margin,
        decoration: decoration ?? BoxDecoration(
          borderRadius: BorderRadius.circular(12)
        ),
        child: ElevatedButton(
          style: buttonStyle ?? ElevatedButton.styleFrom(
            backgroundColor: isDisabled ?? true
                ? AppColors.primary
                : backgroundColor ,
          ),
          onPressed: isDisabled ?? false ? null : onPressed ?? () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (leftIcon != null) ...[
                leftIcon!,
                SizedBox(width: 8.w),
              ],
              Text(
                text,
                style: buttonTextStyle ?? AppStyles.textStyle24,
              ),
              if (rightIcon != null) ...[
                SizedBox(width: 8.w),
                rightIcon!,
              ],
            ],
          ),
        ),
      );
}
