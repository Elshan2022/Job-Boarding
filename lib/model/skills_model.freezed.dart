// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skills_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SkillsModel _$SkillsModelFromJson(Map<String, dynamic> json) {
  return _SkillsModel.fromJson(json);
}

/// @nodoc
mixin _$SkillsModel {
  String? get skill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsModelCopyWith<SkillsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsModelCopyWith<$Res> {
  factory $SkillsModelCopyWith(
          SkillsModel value, $Res Function(SkillsModel) then) =
      _$SkillsModelCopyWithImpl<$Res, SkillsModel>;
  @useResult
  $Res call({String? skill});
}

/// @nodoc
class _$SkillsModelCopyWithImpl<$Res, $Val extends SkillsModel>
    implements $SkillsModelCopyWith<$Res> {
  _$SkillsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skill = freezed,
  }) {
    return _then(_value.copyWith(
      skill: freezed == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkillsModelImplCopyWith<$Res>
    implements $SkillsModelCopyWith<$Res> {
  factory _$$SkillsModelImplCopyWith(
          _$SkillsModelImpl value, $Res Function(_$SkillsModelImpl) then) =
      __$$SkillsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? skill});
}

/// @nodoc
class __$$SkillsModelImplCopyWithImpl<$Res>
    extends _$SkillsModelCopyWithImpl<$Res, _$SkillsModelImpl>
    implements _$$SkillsModelImplCopyWith<$Res> {
  __$$SkillsModelImplCopyWithImpl(
      _$SkillsModelImpl _value, $Res Function(_$SkillsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skill = freezed,
  }) {
    return _then(_$SkillsModelImpl(
      skill: freezed == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkillsModelImpl implements _SkillsModel {
  const _$SkillsModelImpl({this.skill});

  factory _$SkillsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillsModelImplFromJson(json);

  @override
  final String? skill;

  @override
  String toString() {
    return 'SkillsModel(skill: $skill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillsModelImpl &&
            (identical(other.skill, skill) || other.skill == skill));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, skill);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillsModelImplCopyWith<_$SkillsModelImpl> get copyWith =>
      __$$SkillsModelImplCopyWithImpl<_$SkillsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillsModelImplToJson(
      this,
    );
  }
}

abstract class _SkillsModel implements SkillsModel {
  const factory _SkillsModel({final String? skill}) = _$SkillsModelImpl;

  factory _SkillsModel.fromJson(Map<String, dynamic> json) =
      _$SkillsModelImpl.fromJson;

  @override
  String? get skill;
  @override
  @JsonKey(ignore: true)
  _$$SkillsModelImplCopyWith<_$SkillsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
