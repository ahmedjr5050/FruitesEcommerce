import 'package:dartz/dartz.dart';
import 'package:frutiesecommerce/core/errors/failures.dart';
import 'package:frutiesecommerce/features/auth/domain/entities/user_entitiy.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);
}
