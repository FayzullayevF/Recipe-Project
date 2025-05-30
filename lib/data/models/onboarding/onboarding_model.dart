import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_model.g.dart';

@JsonSerializable()
class OnboardingModel {
  final int id;
  final String title;
  final String subtitle;
  final String image;
  final int order;

  OnboardingModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.order,
  });

  factory OnboardingModel.fromJson(Map<String,dynamic> json) => _$OnboardingModelFromJson(json);
}
