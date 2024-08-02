import 'package:flutter/material.dart';
import '../widgets/food_item_widget.dart';
import '../styles/app_colors.dart';

class FoodStore extends StatelessWidget {
  FoodStore({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = [
      {
        'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLEriLgX_bGR88RRKqHm0lbXcUb2rK0TECHQ&s',
        'foodName': 'pizza',
        'remainingTime': '15-25 min',
        'rating': 9,
        'categories': ['fastfood', 'chicken']
      },
      {
        'imageUrl':
        'https://t3.ftcdn.net/jpg/06/11/31/88/360_F_611318889_8ReiQD1j5OOqL4Ee1gKL1zPk6aFfgq6L.jpg',
        'foodName': 'sushi',
        'remainingTime': '5-5 min',
        'rating': 7,
        'categories': ['protine', 'healthy']
      },
      {
        'imageUrl':
        'https://t3.ftcdn.net/jpg/06/11/31/88/360_F_611318889_8ReiQD1j5OOqL4Ee1gKL1zPk6aFfgq6L.jpg',
        'foodName': 'sushi',
        'remainingTime': '5-5 min',
        'rating': 7,
        'categories': ['protine', 'healthy']
      },
    ];
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
        const SizedBox(
          height: 10,
        ),
        //   slides
        SizedBox(
          height: 251, // Set an appropriate height for the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3, // Set the number of items
            itemBuilder: (context, index) {
              final food = foods[index];
              return FoodItemWidget(
                  imageUrl: foods[index]['imageUrl'] as String,
                  foodName: foods[index]['foodName'] as String,
                  remainingTime: foods[index]['remainingTime'] as String,
                  rating: foods[index]['rating'] as double,
                  categories: List<String>.from(food['categories']as List),
              );
            },
          ),
        ),
      ],
    );
  }
}
