import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frutiesecommerce/constants.dart';
import 'package:frutiesecommerce/core/widgets/custom_button.dart';
import 'package:frutiesecommerce/core/widgets/custom_text_field.dart';
import 'package:frutiesecommerce/features/auth/presentation/cubits/signup_cubits/sign_up_cubit.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/have_account_widgets.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/term_and_condition_widgets.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _formAutovalidateMode = AutovalidateMode.disabled;
  late String _email, _password, _name;
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
                onSaved: (value) => _name = value!,
                hintText: 'الاسم كامل',
                textInputType: TextInputType.name,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) => _email = value!,
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) => _password = value!,
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFF616A6B),
                  ),
                  onPressed: () {},
                ),
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 18,
              ),
              TermAndConditionsWidgets(),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      context
                          .read<SignUpCubit>()
                          .createUserWithEmailAndPassword(
                              _email, _password, _name);
                    } else {
                      setState(() {
                        _formAutovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: 'انشاء حساب جديد'),
              SizedBox(
                height: 26,
              ),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
