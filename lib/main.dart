import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_project/core/dependences.dart';
import 'package:new_recipe_project/core/routing/routers.dart';
import 'package:new_recipe_project/core/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MultiBlocProvider(
        providers: providers,
        child: MaterialApp.router(
          routerConfig: router,
          theme: appThemeData,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
