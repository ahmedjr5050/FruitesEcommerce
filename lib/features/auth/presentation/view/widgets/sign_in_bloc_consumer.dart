import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frutiesecommerce/core/helper_functions/build_error_bar.dart';
import 'package:frutiesecommerce/core/widgets/custom_progress_hub.dart';
import 'package:frutiesecommerce/features/auth/presentation/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/widgets/login_view_body.dart';

class SignInBlocConsumer extends StatelessWidget {
  const SignInBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          //TODO: navigate to home
          Navigator.pop(context);
        }
        if (state is SignInError) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomIndicator(
          isLoading: state is SignInLoading,
          child: SignInViewBody(),
        );
      },
    );
  }
}


