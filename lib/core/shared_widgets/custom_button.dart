import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.textColor,
    required this.func,
    this.width,
    this.height = 40,
    this.isLoading = false,
  });
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final String text;
  final VoidCallback func;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorApp.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: Styles.textStyle24.copyWith(
                  color: textColor ?? Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
