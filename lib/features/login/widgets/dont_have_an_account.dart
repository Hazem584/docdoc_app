import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learn/core/helpers/extensions.dart';
import '../../../core/routing/routes.dart';


import '../../../core/theming/styles.dart';


class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueRegular,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}