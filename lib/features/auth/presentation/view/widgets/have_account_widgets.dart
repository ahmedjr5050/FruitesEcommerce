import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/utils/app_colors.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/signup.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'تمتلك حساب بالفعل؟ ',
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
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                },
              text: 'تسجيل دخول',
              style: TextStyles.semiBold16.copyWith(
                color: Color(0xFF949D9E),
              )),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
