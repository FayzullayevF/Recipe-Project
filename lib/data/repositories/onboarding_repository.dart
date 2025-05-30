import 'package:new_recipe_project/core/client.dart';
import 'package:new_recipe_project/data/models/onboarding/onboarding_model.dart';

class OnboardingRepository{
  OnboardingRepository({required this.client});
  final ApiClient client;
  List<OnboardingModel> models = [];

  Future<List<OnboardingModel>> fetchOnboarding()async{
    final rawOnboarding = await client.getGenericRequest<List>("/onboarding/list");
    models = rawOnboarding.map((e)=> OnboardingModel.fromJson(e)).toList();
    return models;
  }
}