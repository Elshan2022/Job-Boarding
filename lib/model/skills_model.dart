import 'package:freezed_annotation/freezed_annotation.dart';

part 'skills_model.g.dart';

part 'skills_model.freezed.dart';

@freezed
class SkillsModel with _$SkillsModel {
  const factory SkillsModel({
    String? skill,
  }) = _SkillsModel;

  factory SkillsModel.fromJson(Map<String, dynamic> json) =>
      _$SkillsModelFromJson(json);
}
