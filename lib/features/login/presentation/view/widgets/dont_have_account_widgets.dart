import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/utils/app_colors.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تمتلك حساب؟',
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.semiBold16.copyWith(
              color: Color(0XFF616A6B),
            ),
          ),
          TextSpan(
              text: 'قم بانشاء حساب',
              style: TextStyles.semiBold16.copyWith(
                color: Color(0xFF949D9E),
              )),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
