// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/app_text.dart';
import 'package:flutter_job_boarding/components/decoration.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_job_boarding/providers/skills_provider.dart';
import 'package:flutter_job_boarding/repository/service_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsView extends ConsumerWidget {
  SkillsView({super.key});

  final ServiceRepository _repository = ServiceRepository();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skills = ref.watch(skillsProvider);
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      child: Autocomplete<String>(
        fieldViewBuilder:
            (context, textEditingController, focusNode, onFieldSubmitted) {
          return _fieldView(textEditingController, focusNode, ref, context);
        },
        optionsViewBuilder: (context, onSelected, options) {
          return _optionView(skills, onSelected);
        },
        displayStringForOption: (option) {
          return option;
        },
        optionsBuilder: (textEditingValue) {
          if (textEditingValue.text.isEmpty) {
            return const Iterable.empty();
          } else {
            return skills!.where((element) {
              final skillsName = element.toUpperCase().trim();
              final query = textEditingValue.text.toUpperCase().trim();
              return skillsName.contains(query);
            });
          }
        },
      ),
    );
  }

  Material _optionView(
      List<String>? skills, AutocompleteOnSelected<String> onSelected) {
    return Material(
      color: AppColors.primaryLight,
      borderRadius: BorderRadius.circular(15.w),
      child: Container(
        width: double.infinity,
        height: 100.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
          color: AppColors.primaryLight,
        ),
        child: ListView.builder(
          itemCount: skills?.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final skill = skills?.elementAt(index) ?? "";
            return ListTile(
              onTap: () {
                onSelected(skill);
              },
              title: Text(
                skill,
                style: AppText.textMedium(fontSize: 14),
              ),
            );
          },
        ),
      ),
    );
  }

  TextFormField _fieldView(TextEditingController textEditingController,
      FocusNode focusNode, WidgetRef ref, BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      maxLines: 1,
      style: AppDecorations.textFieldTextStyle,
      controller: textEditingController,
      focusNode: focusNode,
      onChanged: (value) async {
        try {
          var skills = await _repository.getSkills(value);
          ref.read(skillsProvider.notifier).setSkills(skills);
        } catch (e) {
          throw HelperMethods.showSnackBar(
            context,
            e.toString(),
            AppColors.colorRed,
          );
        }
      },
      decoration: InputDecoration(
        hintStyle: AppText.textMedium(fontSize: 16),
        hintText: "Skills",
        border: AppDecorations.textFieldBorder,
        errorBorder: AppDecorations.textFieldErrorBorder,
        focusedBorder: AppDecorations.textFieldBorder,
        enabledBorder: AppDecorations.textFieldBorder,
      ),
    );
  }
}
