import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/utils/app_images.dart';
import 'package:frutiesecommerce/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    excuteNavigaion();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.resourceImagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.resourceImagesLogo),
        SvgPicture.asset(
          Assets.resourceImagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigaion() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
