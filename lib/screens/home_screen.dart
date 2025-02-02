import 'package:flutter/material.dart';
import '../components/food_store.dart';
import 'package:food_delivery_ui/styles/app_colors.dart';
import '../components/category_component.dart';
import '../components/search_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //   appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //   menu
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.lightBackgroundColor,
                        borderRadius: BorderRadius.circular(13)),
                    child: const Center(
                        child: Icon(
                      Icons.sort,
                      color: AppColors.whiteColor,
                    )),
                  ),
                  //   title
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Deliver to',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Text(
                        'Bangladesh',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
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
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //   title
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'What would like\nto order',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: AppColors.whiteColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              //   searchbar
              const SearchComponent(),
              //   sliders
              const SizedBox(height: 10,),
              const CategoryComponent(),
              const SizedBox(height: 20,),
              FoodStore(),
            ],
          ),
        ),
      ),
    );
  }
}
