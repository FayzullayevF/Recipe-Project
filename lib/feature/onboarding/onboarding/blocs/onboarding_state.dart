import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_recipe_project/data/models/onboarding/onboarding_model.dart';

part 'onboarding_state.freezed.dart';

enum OnboardingStatus {idle,loading, success, error }

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required OnboardingStatus status,
    required List<OnboardingModel> models,
  }) = _OnboardingState;

  factory OnboardingState.initial(){
    return OnboardingState(status: OnboardingStatus.loading, models: []);
  }
}
