import 'package:flutter/material.dart';
import 'package:learn/core/theming/app_colors.dart';


import 'package:learn/core/theming/styles.dart';
import '../../core/helpers/spacing.dart';

class PassowrdValidation extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacters;
  final bool hasNumbers;
  final bool hasMinimumLength;

  const PassowrdValidation({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasSpecialCharacters,
    required this.hasNumbers,
    required this.hasMinimumLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(hasLowercase, "At least 1 lowercase letter"),
        verticalSpace(2),
        buildValidationRow(hasUppercase, "At least 1 uppercase letter"),
        verticalSpace(2),
        buildValidationRow(hasSpecialCharacters, "At least 1 special character"),
        verticalSpace(2),
        buildValidationRow(hasNumbers, "At least 1 number"),
        verticalSpace(2),
        buildValidationRow(hasMinimumLength, "At least 8 characters long"),
      ],
    );
  }

  buildValidationRow(bool hasValidated, String text) {
    return Row(children: [
      CircleAvatar(
        radius: 2.5,
        backgroundColor: ColorsManger.gray,
      ),
      horizontalSpace(7),
      Text(text,style: TextStyles.font13BlueRegular.copyWith(
        decoration: hasValidated ? TextDecoration.lineThrough : null,
        decorationColor: Colors.green,
        decorationThickness: 2,
        color: hasValidated ? ColorsManger.gray : ColorsManger.darkBlue,
      ),)
    ]);
  }
}
