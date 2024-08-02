import 'package:flutter/material.dart';
import '../widgets/food_item_widget.dart';
import '../styles/app_colors.dart';

class FoodStore extends StatelessWidget {
  const FoodStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Fastest Delivery',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColors.whiteColor,
          ),
        ),
        const SizedBox(height: 10,),
        //   slides
        SizedBox(
          height: 250, // Set an appropriate height for the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5, // Set the number of items
            itemBuilder: (context, index) {
              return FoodItemWidget();
            },
          ),
        ),
      ],
    );
  }
}
