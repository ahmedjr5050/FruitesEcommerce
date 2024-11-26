import 'package:flutter/material.dart';
import 'package:frutiesecommerce/constants.dart';
import 'package:frutiesecommerce/core/utils/app_colors.dart';
import 'package:frutiesecommerce/core/utils/app_images.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';
import 'package:frutiesecommerce/core/widgets/custom_button.dart';
import 'package:frutiesecommerce/core/widgets/custom_text_field.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/dont_have_account_widgets.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/or_divider.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل الدخول',
            ),
            const SizedBox(
              height: 33,
            ),
            const DontHaveAnAccountWidget(),
            SizedBox(
              height: 33,
            ),
            OrDivider(),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              title: 'تسجيل بواسطة جوجل',
              images: Assets.resourceImagesGoogleIcon,
              onPressed: () {},
            ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              title: 'تسجيل بواسطة أبل',
              images: Assets.resourceImagesApplIcon,
              onPressed: () {},
            ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              title: 'تسجيل الدخول بواسطة الفيسبوك',
              images: Assets.resourceImagesFacebookIcon,
              onPressed: () {},
            ),
          ],
        )),
      ),
    );
  }
}
