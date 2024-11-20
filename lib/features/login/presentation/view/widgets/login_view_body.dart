import 'package:flutter/material.dart';
import 'package:frutiesecommerce/constants.dart';
import 'package:frutiesecommerce/core/utils/app_colors.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';
import 'package:frutiesecommerce/core/widgets/custom_button.dart';
import 'package:frutiesecommerce/core/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizintalPadding,
      ),
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: 'البريد الإلكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'نسيت كلمة المرور؟',
                style: TextStyles.semiBold13.copyWith(
                  color: AppColors.lightPrimaryColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 33,
          ),
          CustomButton(
            onPressed: () {},
            text: 'تسجيل الدخول',
          ),
          const SizedBox(
            height: 33,
          ),
          Text.rich(
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
          )
        ],
      )),
    );
  }
}
