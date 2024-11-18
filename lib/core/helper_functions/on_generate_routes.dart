import 'package:flutter/material.dart';
import 'package:frutiesecommerce/features/login/presentation/view/login.dart';
import 'package:frutiesecommerce/features/splash/presentation/views/spalsh_view.dart';

import '../../features/on_boarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());
    default:
      return MaterialPageRoute(builder: (_) => const SplashView());
  }
}
