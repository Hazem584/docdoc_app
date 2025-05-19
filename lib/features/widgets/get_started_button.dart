import 'package:flutter/material.dart';
import 'package:learn/core/helpers/extensions.dart';
import 'package:learn/core/routing/routes.dart';
import 'package:learn/core/theming/styles.dart';

import '../../core/theming/app_colors.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      context.pushNamed(Routes.loginScreen);
    },
      style: ButtonStyle(
        backgroundColor:MaterialStateProperty.all(ColorsManger.minBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all( Size(double.infinity, 60)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
        child: Text(
            "Get Started",
          style: TextStyles.font16WhiteSemiBold,
        ),
    );
  }
}
