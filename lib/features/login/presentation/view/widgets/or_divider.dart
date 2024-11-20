import 'package:flutter/material.dart';
import 'package:frutiesecommerce/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
        const SizedBox(width: 18),
        Text(
          'أو',
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16.copyWith(color: Color(0xFF616A6B)),
        ),
        const SizedBox(width: 18),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
      ],
    );
  }
}
