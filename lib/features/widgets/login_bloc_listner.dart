import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/core/helpers/extensions.dart';
import 'package:learn/core/routing/routes.dart';
import 'package:learn/core/theming/styles.dart';
import 'package:learn/features/home/ui/login/data/models/login_response.dart';
import '../../core/theming/app_colors.dart' show ColorsManger;

import '../home/ui/login/logic/login_cubit.dart';
import '../home/ui/login/logic/login_state.dart';

class LoginBlocListenner extends StatelessWidget {
  const LoginBlocListenner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (perevious, current) =>
              current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // Show loading indicator
            showDialog(
              context: context,
              builder:
                  (context) => Center(
                    child: CircularProgressIndicator(
                      color: ColorsManger.minBlue,
                    ),
                  ),
            );
          },
          success: (LoginResponse) {
            // Hide loading indicator
            context.pop();
            context.pushNamed(Routes.homeScreen);
            // Handle success state
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
      context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(
              error,
              style: TextStyles.font15DarkBlueMedium,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Got it!',
                  style: TextStyles.font14BlueSemiBold,
                ),
              ),
            ],
          ),
    );
  }
}
