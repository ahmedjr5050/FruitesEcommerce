import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:frutiesecommerce/constants.dart';
import 'package:frutiesecommerce/core/services/shared_preferences_sigleton.dart';
import 'package:frutiesecommerce/core/utils/app_colors.dart';
import 'package:frutiesecommerce/core/widgets/custom_button.dart';
import 'package:frutiesecommerce/features/login/presentation/view/login.dart';
import 'package:frutiesecommerce/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageview(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          position: currentPage,
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 29),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kHorizintalPadding,
            ),
            child: CustomButton(
                onPressed: () {
                  Prefs.setBool(kIsOnBoardingViewSeen, true);
                  Navigator.pushReplacementNamed(
                    context,
                    LoginView.routeName,
                  );
                },
                text: 'ابدأ الان'),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
