import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/utils/app_images.dart';
import 'package:frutiesecommerce/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItems(
            image: Assets.resourceImagesPageViewItem1Image,
            backgroundimage: Assets.resourceImagesPageViewItem1Background,
            title: Row(
              children: [
                Text('مرحبًا بك في'),
                Text('Fruit'),
                Text('HUB'),
              ],
            ),
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.'),
      ],
    );
  }
}
