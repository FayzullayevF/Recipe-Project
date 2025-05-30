import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

class RecipeButton extends StatelessWidget {
  const RecipeButton({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
    required this.fontSize,
    required this.containerColor,
    required this.textColor,
    required this.title,
    required this.fontWeight,
    required this.callback,
  });

  final double containerHeight, containerWidth, fontSize;
  final Color containerColor, textColor;
  final String title;
  final FontWeight fontWeight;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: containerHeight.h,
        width: containerWidth.w,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
