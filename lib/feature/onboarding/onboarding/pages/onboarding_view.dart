import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:new_recipe_project/core/utils/colors.dart';
import 'package:new_recipe_project/feature/common/recipe_button.dart';
import 'package:new_recipe_project/feature/onboarding/onboarding/blocs/onboarding_bloc.dart';
import 'package:new_recipe_project/feature/onboarding/onboarding/blocs/onboarding_state.dart';
import 'package:new_recipe_project/feature/onboarding/onboarding/widgets/onboarding_item.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) => switch (state.status) {
          OnboardingStatus.loading => Center(
            child: Container(
              height: 150.h,
              width: 150.w,
              decoration: BoxDecoration(
                color: AppColors.pinkSub,
                borderRadius: BorderRadius.circular(12),
              ),
              child: CupertinoActivityIndicator(),
            ),
          ),
          OnboardingStatus.error => Center(child: Text("Onboarding Error")),
          OnboardingStatus.idle => Center(child: Text("Date arrived")),
          OnboardingStatus.success => Stack(
            children: [
              PageView.builder(
                itemCount: state.models.length,
                itemBuilder: (context, index) => SizedBox(
                  child: OnboardingItem(
                    image: state.models[index].image,
                    title: state.models[index].title,
                    subtitle: state.models[index].subtitle,
                    order: state.models[index].order,
                  ),
                ),
              ),
              Positioned(
                left: 107.w,
                right: 107.w,
                bottom: 47.h,
                child: RecipeButton(
                  containerHeight: 45.h,
                  containerWidth: 207.w,
                  fontSize: 20,
                  containerColor: AppColors.pink,
                  textColor: AppColors.pinkSub,
                  title: "Continue",
                  fontWeight: FontWeight.w600,
                  callback: () {},
                ),
              ),
            ],
          ),
        },
      ),
    );
  }
}
