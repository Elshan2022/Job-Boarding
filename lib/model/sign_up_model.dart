import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_model.g.dart';
part 'sign_up_model.freezed.dart';

@freezed
class SignUpModel with _$SignUpModel {
  const factory SignUpModel({
    required String uuid,
    required String name,
    required String surname,
    required String email,
    required String phoneNumber,
    required String password,
  }) = _SignUpModel;

  factory SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);
}
