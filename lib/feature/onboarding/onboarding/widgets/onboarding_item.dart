import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_project/core/utils/colors.dart';
import 'package:new_recipe_project/feature/common/recipe_button.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.order,
  });

  final String image, title, subtitle;
  final int order;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 0,right: 0,left: 0,
          child: Container(
            height: 350.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.beigeColor, Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            width: double.infinity,
            height: 167.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.beigeColor, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned(
          top: 90.h,left: 37.w,right: 37.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.whiteBeige,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: AppColors.whiteBeige,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
