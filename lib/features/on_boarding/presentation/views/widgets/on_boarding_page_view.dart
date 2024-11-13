import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/utils/app_colors.dart';
import 'package:frutiesecommerce/core/utils/app_images.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';
import 'package:frutiesecommerce/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItems(
            isVisible:
                pageController.hasClients && pageController.page!.round() != 0,
            image: Assets.resourceImagesPageViewItem1Image,
            backgroundimage: Assets.resourceImagesPageViewItem1Background,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'مرحبًا بك في',
                  style: TextStyles.bold23,
                ),
                Text(
                  ' HUB',
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.secondaryColor),
                ),
                Text(
                  'Fruit',
                  style:
                      TextStyles.bold23.copyWith(color: AppColors.primaryColor),
                ),
              ],
            ),
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.'),
        PageViewItems(
            isVisible:
                pageController.hasClients && pageController.page!.round() != 0,
            image: Assets.resourceImagesPageViewItem2Image,
            backgroundimage: Assets.resourceImagesPageViewItems2Backgroundimage,
            title: Text(
              'ابحث وتسوق',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  height: 0,
                  color: Color(0xFF0C0D0D),
                  fontFamily: 'Cairo'),
            ),
            subtitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',),
      ],
    );
  }
}
