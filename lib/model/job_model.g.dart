// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobModelImpl _$$JobModelImplFromJson(Map<String, dynamic> json) =>
    _$JobModelImpl(
      logo: json['logo'] as String,
      field: json['field'] as String,
      company: json['company'] as String,
      postedDuration: json['postedDuration'] as String,
      location: json['location'] as String,
      experience: json['experience'] as String,
      type: json['type'] as String,
      salary: json['salary'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      role: json['role'] as String,
      isApplied: json['isApplied'] as bool? ?? false,
      isDiscard: json['isDiscard'] as bool? ?? false,
    );

Map<String, dynamic> _$$JobModelImplToJson(_$JobModelImpl instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'field': instance.field,
      'company': instance.company,
      'postedDuration': instance.postedDuration,
      'location': instance.location,
      'experience': instance.experience,
      'type': instance.type,
      'salary': instance.salary,
      'description': instance.description,
      'id': instance.id,
      'skills': instance.skills,
      'role': instance.role,
      'isApplied': instance.isApplied,
      'isDiscard': instance.isDiscard,
    };
