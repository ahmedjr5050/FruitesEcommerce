import 'package:dartz/dartz.dart';
import 'package:frutiesecommerce/core/errors/exception.dart';
import 'package:frutiesecommerce/core/errors/failures.dart';
import 'package:frutiesecommerce/core/services/firebase_auth_services.dart';
import 'package:frutiesecommerce/features/auth/data/models/user_model.dart';
import 'package:frutiesecommerce/features/auth/domain/entities/user_entitiy.dart';
import 'package:frutiesecommerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthServices;

  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthServices.crateUserWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(
        ServerFailure(
         'حدث خطأ ما يرجى المحاولة مرة أخرى',
        ),
      );
    }
  }
}
