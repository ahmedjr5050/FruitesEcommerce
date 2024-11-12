import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/utils/app_images.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems(
      {super.key,
      required this.image,
      required this.backgroundimage,
      required this.title,
      required this.subtitle});
  final String image, backgroundimage;
  final Widget title;
  final String subtitle;
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
                child: SvgPicture.asset(
                    Assets.resourceImagesPageViewItem1Background,
                    fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  Assets.resourceImagesPageViewItem1Image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text('تخط'),
              )
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Text(subtitle, textAlign: TextAlign.center),
      ],
    );
  }
}
