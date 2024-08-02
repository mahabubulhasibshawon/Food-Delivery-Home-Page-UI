import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class FoodItemWidget extends StatelessWidget {
  const FoodItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 100, // Fixed height to prevent overflow
        width: 200, // Width can be adjusted or fixed
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.lightBackgroundColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            Image.network(
                'https://tb-static.uber.com/prod/image-proc/processed_images/95beb12799df87c3e62201d7584a46a1/c9252e6c6cd289c588c3381bc77b1dfc.jpeg',
              height: 150,
              width: 200,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
