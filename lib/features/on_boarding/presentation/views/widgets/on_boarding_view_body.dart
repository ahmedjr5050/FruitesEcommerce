import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:frutiesecommerce/constants.dart';
import 'package:frutiesecommerce/core/utils/app_colors.dart';
import 'package:frutiesecommerce/core/widgets/custom_button.dart';
import 'package:frutiesecommerce/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageview(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 29),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizintalPadding,
          ),
          child: CustomButton(onPressed: () {}, text: 'ابدأ الان'),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
