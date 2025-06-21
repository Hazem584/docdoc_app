import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/core/di/dependency_injection.dart';

import 'package:learn/core/routing/routes.dart';
import 'package:learn/features/home/logic/home_cubit.dart';
import 'package:learn/features/login/logic/login_cubit.dart';
import 'package:learn/features/signup/logic/sign_up_cubit.dart';
import 'package:learn/features/signup/ui/sign_up_screen.dart';

import '../../features/home/ui/screens/home_screen.dart';
import '../../features/login/login_screen.dart';
import '../../features/onbording/onbordin_screen.dart';

class AppRouter {
  Route? generatetRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (arguments as ClassName)

    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const OnbordinScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt()..getSpecializations()),
            child: const HomeScreen()
        )
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
