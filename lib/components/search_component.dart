import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [
        //   searchbar
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: AppColors.whiteColor,),
              hintText: 'Find for resturants or food...',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xffb7b0b0),
              ),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        //   icon
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColors.lightBackgroundColor,
              borderRadius: BorderRadius.circular(13)
          ),
          child: const Center(child: Icon(Icons.filter_alt, color: AppColors.whiteColor,)),
        ),
      ],
    );
  }
}
