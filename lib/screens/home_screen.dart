import 'package:flutter/material.dart';
import 'package:food_delivery_ui/styles/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //   appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //   menu
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.lightBackgroundColor,
                      borderRadius: BorderRadius.circular(13)
                    ),
                    child: Center(child: Icon(Icons.sort)),
                  ),
                  //   title
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hello World',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor,
                        ),
                      ),
                      Text(
                        'Bangladesh',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                  //   profile image
                  Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                        color: AppColors.lightBackgroundColor,
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg'), fit: BoxFit.cover)
                    ),
                  ),

                ],
              )
              //   title
              //   searchbar
              //   sliders
            ],
          ),
        ),
      ),
    );
  }
}
