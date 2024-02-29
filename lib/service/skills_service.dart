// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_job_boarding/customException/custom_exception.dart';

abstract class ISkillService {
  final Dio dio;

  ISkillService(this.dio);
  Future<List<String>?> getSkills(String query);
}

class SkillService extends ISkillService {
  SkillService(super.dio);
  @override
  Future<List<String>?> getSkills(String query) async {
    if (query.isNotEmpty) {
      final response =
          await dio.get("https://api.apilayer.com/skills?q=$query");
      try {
        if (response.statusCode == HttpStatus.ok) {
          final data = response.data;
          if (data is List) {
            return data.cast<String>();
          }
        } else {
          return null;
        }
      } catch (e) {
        throw CustomException(errorMessage: e.toString());
      }
    }

    return [];
  }
}
