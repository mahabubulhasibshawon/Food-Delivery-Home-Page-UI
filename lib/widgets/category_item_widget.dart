import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  final String imageUrl;
  final String foodName;

  const CategoryItemWidget({super.key, required this.imageUrl, required this.foodName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 120, // Fixed height to prevent overflow
        width: 100, // Width can be adjusted or fixed
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.lightBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return SizedBox(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Container(
                    width: 60,
                    height: 60,
                    color: Colors.grey,
                    child: Icon(Icons.error, color: Colors.red),
                  );
                },
              ),
            ),
            SizedBox(height: 8),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  foodName,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
