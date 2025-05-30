import 'package:bloc/bloc.dart';
import 'package:new_recipe_project/data/repositories/onboarding_repository.dart';
import 'package:new_recipe_project/feature/onboarding/onboarding/blocs/onboarding_event.dart';
import 'package:new_recipe_project/feature/onboarding/onboarding/blocs/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState>{
  final OnboardingRepository _repo;
  OnboardingBloc({required OnboardingRepository repo}) : _repo = repo, super(OnboardingState.initial()){
   on<OnboardingLoad>(_onLoad);
   add(OnboardingLoad());
  }

  Future _onLoad(OnboardingLoad event, Emitter<OnboardingState> emit)async{
    final onboarding = await _repo.fetchOnboarding();
    emit(state.copyWith(status: OnboardingStatus.success, models: onboarding ));
  }
}