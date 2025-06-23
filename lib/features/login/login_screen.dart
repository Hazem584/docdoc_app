import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/core/helpers/extensions.dart';
import 'package:learn/core/helpers/spacing.dart';
import 'package:learn/core/routing/routes.dart';
import 'package:learn/features/login/data/models/login_requset_body.dart';
import 'package:learn/features/login/logic/login_cubit.dart';
import '../../core/theming/styles.dart';
import '../../core/widgets/app_text_button.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listner.dart';
import '../widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpace(10),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font16GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(26),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(35),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {
                         validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(23),
                    TermsAndConditionsText(),
                    verticalSpace(60),
                    DontHaveAccountText(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
