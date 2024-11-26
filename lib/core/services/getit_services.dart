import 'package:frutiesecommerce/core/services/firebase_auth_services.dart';
import 'package:frutiesecommerce/features/auth/data/repos/auth_repo_imp.dart';
import 'package:frutiesecommerce/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());

  // Register AuthRepo and AuthRepoImpl separately if needed
  final authRepoImpl =
      AuthRepoImpl(firebaseAuthServices: getIt<FirebaseAuthService>());
  getIt.registerSingleton<AuthRepo>(authRepoImpl);
  getIt.registerSingleton<AuthRepoImpl>(authRepoImpl);
}
