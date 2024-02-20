// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobModelImpl _$$JobModelImplFromJson(Map<String, dynamic> json) =>
    _$JobModelImpl(
      jobLogo: json['jobLogo'] as String,
      jobTitle: json['jobTitle'] as String,
      jobSubtitle: json['jobSubtitle'] as String,
      postedDuration: json['postedDuration'] as String,
      jobLocation: json['jobLocation'] as String,
      experience: json['experience'] as String,
      jobTime: json['jobTime'] as String,
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
      'jobLogo': instance.jobLogo,
      'jobTitle': instance.jobTitle,
      'jobSubtitle': instance.jobSubtitle,
      'postedDuration': instance.postedDuration,
      'jobLocation': instance.jobLocation,
      'experience': instance.experience,
      'jobTime': instance.jobTime,
      'salary': instance.salary,
      'description': instance.description,
      'id': instance.id,
      'skills': instance.skills,
      'role': instance.role,
      'isApplied': instance.isApplied,
      'isDiscard': instance.isDiscard,
    };
