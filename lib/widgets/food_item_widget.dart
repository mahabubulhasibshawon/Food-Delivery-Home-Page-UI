import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class FoodItemWidget extends StatelessWidget {
  final String imageUrl;
  final String foodName;
  final String remainingTime;
  final double rating;
  final List<String> categories;

  const FoodItemWidget({
    super.key,
    required this.imageUrl,
    required this.foodName,
    required this.remainingTime,
    required this.rating,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.lightBackgroundColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            // Top 60% - Image with Love Icon
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.network(
                    imageUrl,
                    height: 150, // 60% of 250 is 150
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ],
            ),
            // Bottom 40% - Text and Details
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food name and Remaining time with Alarm Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          foodName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.whiteColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_alarm, size: 14, color: Colors.grey),
                          SizedBox(width: 4),
                          Text(
                            remainingTime,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  // Rating
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      SizedBox(width: 4),
                      Text(
                        rating.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  // Categories
                  Wrap(
                    spacing: 6.0,
                    runSpacing: 4.0,
                    children: categories.map((category) {
                      return Chip(
                        label: Text(category),
                        backgroundColor: AppColors.lightBackgroundColor.withOpacity(0.5),
                        labelStyle: TextStyle(color: Colors.black),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
