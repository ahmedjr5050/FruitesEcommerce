import 'package:bloc/bloc.dart';
import 'package:frutiesecommerce/features/auth/domain/entities/user_entitiy.dart';
import 'package:frutiesecommerce/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(SignInLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(
        SignInError(failure.message),
      ),
      (UserEntity) => emit(
        SignInSuccess(
          userEntity: UserEntity,
        ),
      ),
    );
  }
  Future<void> signInWithGoogle() async {
    emit(SignInLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(
        SignInError(failure.message),
      ),
      (UserEntity) => emit(
        SignInSuccess(
          userEntity: UserEntity,
        ),
      ),
    );
  }
  Future<void> signInWithFacebook() async {
    emit(SignInLoading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) => emit(
        SignInError(failure.message),
      ),
      (UserEntity) => emit(
        SignInSuccess(
          userEntity: UserEntity,
        ),
      ),
    );
  }
}
