import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/widgets/custom_app_bar.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'loginview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'تسجيل الدخول',
      ),
      body: const LoginViewBody(),
    );
  }
}
