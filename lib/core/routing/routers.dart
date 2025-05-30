import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_project/core/routing/routes.dart';
import 'package:new_recipe_project/feature/onboarding/launch.dart';
import 'package:new_recipe_project/feature/onboarding/onboarding/blocs/onboarding_bloc.dart';
import 'package:new_recipe_project/feature/onboarding/onboarding/pages/onboarding_view.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(path: Routes.launch, builder: (context, state) => LaunchView()),
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => BlocProvider(
        create: (context) => OnboardingBloc(repo: context.read()),
        child: OnboardingView(),
      ),
    ),
  ],
);
