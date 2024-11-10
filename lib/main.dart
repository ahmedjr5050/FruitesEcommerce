import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/helper_functions/on_generate_routes.dart';
import 'package:frutiesecommerce/features/splash/presentation/views/spalsh_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
