import 'package:new_recipe_project/core/client.dart';
import 'package:new_recipe_project/data/repositories/onboarding_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  Provider(create: (context)=> ApiClient()),
  Provider(create: (context)=> OnboardingRepository(client: context.read())),
];