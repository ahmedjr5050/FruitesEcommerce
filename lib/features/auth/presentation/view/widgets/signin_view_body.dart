import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frutiesecommerce/constants.dart';
import 'package:frutiesecommerce/core/utils/app_colors.dart';
import 'package:frutiesecommerce/core/utils/app_images.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';
import 'package:frutiesecommerce/core/widgets/custom_button.dart';
import 'package:frutiesecommerce/core/widgets/custom_text_field.dart';
import 'package:frutiesecommerce/core/widgets/password_field.dart';
import 'package:frutiesecommerce/features/auth/presentation/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/dont_have_account_widgets.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/or_divider.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/social_login_button.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
AutovalidateMode _formAutovalidateMode = AutovalidateMode.disabled;
late String _email, _password;

class _SignInViewBodyState extends State<SignInViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizintalPadding,
      ),
      child: SingleChildScrollView(
          child: Form(
        key: _formKey,
        autovalidateMode: _formAutovalidateMode,
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              onSaved: (value) => _email = value!,
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 16,
            ),
            PasswordField(
              onSaved: (value) => _password = value!,
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
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  context
                      .read<SignInCubit>()
                      .signInWithEmailAndPassword(_email, _password);
                } else {
                  setState(() {
                    _formAutovalidateMode = AutovalidateMode.always;
                  });
                }
              },
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
              onPressed: () {
                print('google');
                context.read<SignInCubit>().signInWithGoogle();
              },
            ),
            SizedBox(
              height: 16,
            ),
            Platform.isIOS
                ? Column(
                    children: [
                      SocialLoginButton(
                        title: 'تسجيل بواسطة أبل',
                        images: Assets.resourceImagesApplIcon,
                        onPressed: () {},
                      ),
                    ],
                  )
                : const SizedBox(),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              title: 'تسجيل الدخول بواسطة الفيسبوك',
              images: Assets.resourceImagesFacebookIcon,
              onPressed: () {
                context.read<SignInCubit>().signInWithFacebook();
              },
            ),
          ],
        ),
      )),
    );
  }
}
