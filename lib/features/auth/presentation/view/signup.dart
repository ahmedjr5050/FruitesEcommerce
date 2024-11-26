import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frutiesecommerce/core/services/getit_services.dart';
import 'package:frutiesecommerce/core/widgets/custom_app_bar.dart';
import 'package:frutiesecommerce/features/auth/data/repos/auth_repo_imp.dart';
import 'package:frutiesecommerce/features/auth/presentation/cubits/signup_cubits/sign_up_cubit.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/sign_view_body_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt<AuthRepoImpl>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: SignUpBlocConsumerBody(),
      ),
    );
  }
}
