import 'package:flutter/material.dart';
import 'package:frutiesecommerce/constants.dart';
import 'package:frutiesecommerce/core/services/shared_preferences_sigleton.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';
import 'package:frutiesecommerce/features/auth/presentation/view/login.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems(
      {super.key,
      required this.image,
      required this.backgroundimage,
      required this.title,
      required this.subtitle,
      required this.isVisible});
  final String image, backgroundimage;
  final Widget title;
  final String subtitle;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundimage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(LoginView.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13
                          .copyWith(color: Color(0XFF949D9E)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: Color(0xFF4E5456),
            ),
          ),
        ),
      ],
    );
  }
}
