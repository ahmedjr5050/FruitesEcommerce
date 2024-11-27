import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frutiesecommerce/core/services/getit_services.dart';
import 'package:frutiesecommerce/core/widgets/custom_app_bar.dart';
import 'package:frutiesecommerce/features/auth/data/repos/auth_repo_imp.dart';
import 'package:frutiesecommerce/features/auth/presentation/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/sign_in_bloc_consumer.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const routeName = 'loginview';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(
        getIt<AuthRepoImpl>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: 'تسجيل الدخول',
        ),
        body: SignInBlocConsumer(),
      ),
    );
  }
}
