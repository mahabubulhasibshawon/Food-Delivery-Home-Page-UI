import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/widgets/category_item_widget.dart';
import '../styles/app_colors.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'imageUrl': 'https://static.vecteezy.com/system/resources/thumbnails/027/141/485/small_2x/pizza-created-with-generative-ai-png.png', 'foodName': 'Pizza'},
      {'imageUrl': 'https://t4.ftcdn.net/jpg/05/65/22/05/360_F_565220597_DjMSnmmbovq13MB8b8ET8ydwP0iOKuMX.jpg', 'foodName': 'Burger'},
      {'imageUrl': 'https://media.post.rvohealth.io/wp-content/uploads/2021/09/sushi-sashimi-732x549-thumbnail-732x549.jpg', 'foodName': 'Sushi'},
      {'imageUrl': 'https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Pasta-alla-vodka-f1d2e1c.jpg', 'foodName': 'Pasta'},
      {'imageUrl': 'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTEwL3JtNDY3YmF0Y2g1LWZvb2QtMDAzXzIucG5n.png', 'foodName': 'Hot Dog'}
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
      const SizedBox(height: 10,),
      //   slides
        SizedBox(
          height: 100, // Set an appropriate height for the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5, // Set the number of items
            itemBuilder: (context, index) {
              return CategoryItemWidget(
                imageUrl: categories[index]['imageUrl']!,
                foodName: categories[index]['foodName']!,
              );
            },
          ),
        ),
      ],
    );
  }
}
