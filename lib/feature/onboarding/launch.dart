import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_project/core/routing/routes.dart';
import 'package:new_recipe_project/core/utils/colors.dart';

class LaunchView extends StatefulWidget {
  const LaunchView({super.key});

  @override
  State<LaunchView> createState() => _LaunchViewState();
}

class _LaunchViewState extends State<LaunchView> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(milliseconds: 100),(){
      context.go(Routes.onboarding);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.redPinkMain,
      body: Center(
        child: Image.asset("assets/images/dish-dash.png", width: 307.w, height: 252.h),
      ),
    );
  }
}
