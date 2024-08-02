import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/widgets/category_item_widget.dart';
import '../styles/app_colors.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Fastest Delivery',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColors.whiteColor,
          ),
        ),
      //   slides
        Row(
          children: [
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
          ],
        )
      ],
    );
  }
}
