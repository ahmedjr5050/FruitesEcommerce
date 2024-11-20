import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';

import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: AppColors.primaryColor,
            minimumSize: const Size(double.infinity, 50),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyles.bold16.copyWith(
              color: Colors.white,
            ),
          )),
    );
  }
}
