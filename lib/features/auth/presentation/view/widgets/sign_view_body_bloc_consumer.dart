import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frutiesecommerce/features/auth/presentation/cubits/signup_cubits/sign_up_cubit.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpBlocConsumerBody extends StatelessWidget {
  const SignUpBlocConsumerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          Navigator.pop(context);
        }
        if (state is SignUpError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.message),
            backgroundColor: Colors.red,
          ));
        }
      },
      builder: (context, state) {
        return BlocBuilder<SignUpCubit, SignUpState>(
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is SignUpLoading ? true : false,
                child: SignUpViewBody());
          },
        );
      },
    );
  }
}
