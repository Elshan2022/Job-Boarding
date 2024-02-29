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

class SkillsAutoCompleteView extends ConsumerStatefulWidget {
  const SkillsAutoCompleteView({super.key});

  @override
  ConsumerState<SkillsAutoCompleteView> createState() => _SkillsViewState();
}

class _SkillsViewState extends ConsumerState<SkillsAutoCompleteView> {
  final ServiceRepository _repository = ServiceRepository();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final skills = ref.watch(skillsProvider);
    return Autocomplete<String>(
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
          return _optionBuilder(textEditingValue);
        },
      );
  }

  _optionBuilder(TextEditingValue textEditingValue) {
    final skills = ref.watch(skillsProvider);
    if (textEditingValue.text.isEmpty) {
      return const Iterable.empty();
    } else {
      if (textEditingValue.text.isEmpty) {
        return const Iterable.empty();
      } else {
        return skills!.where((element) {
          final skillsName = element.toUpperCase().trim();
          final query = textEditingValue.text.toUpperCase().trim();
          return skillsName.contains(query);
        });
      }
    }
  }

  Material _optionView(
    List<String>? skills,
    AutocompleteOnSelected<String> onSelected,
  ) {
    return Material(
      color: AppColors.primaryLight,
      borderRadius: BorderRadius.circular(15.w),
      child:
          _isLoading ? _skillsListViewBuilder(skills, onSelected) : _loading(),
    );
  }

  SizedBox _loading() {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: const Center(
        child: CircularProgressIndicator(color: Colors.white),
      ),
    );
  }

  Container _skillsListViewBuilder(
    List<String>? skills,
    AutocompleteOnSelected<String> onSelected,
  ) {
    return Container(
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
              ref.read(addtionalSkillProvider.notifier).addSkill(skill);
            },
            title: Text(
              skill,
              style: AppText.textMedium(fontSize: 14),
            ),
          );
        },
      ),
    );
  }

  TextFormField _fieldView(
    TextEditingController textEditingController,
    FocusNode focusNode,
    WidgetRef ref,
    BuildContext context,
  ) {
    return TextFormField(
      cursorColor: Colors.white,
      maxLines: 1,
      style: AppDecorations.textFieldTextStyle,
      controller: textEditingController,
      focusNode: focusNode,
      onFieldSubmitted: (value) {
        ref.read(addtionalSkillProvider.notifier).addSkill(value);
      },
      onChanged: (value) async {
        setState(() {
          _isLoading = false;
        });
        try {
          var skills = await _repository.getSkills(value);
          if (skills != null) {
            ref.read(skillsProvider.notifier).setSkills(skills);
          }
        } catch (e) {
          throw HelperMethods.showSnackBar(
            context,
            e.toString(),
            AppColors.colorRed,
          );
        }
        setState(() {
          _isLoading = true;
        });
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
