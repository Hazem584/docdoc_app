
import 'package:flutter/material.dart';
import 'package:learn/core/routing/routes.dart';

import '../../features/home/ui/screens/login_screen.dart';
import '../../features/onbording/onbordin_screen.dart';

class AppRouter {
  Route generatetRoute(RouteSettings settings) {
// this arguments to be passed in any screen like this (arguments as ClassName)

final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const OnbordinScreen());
        case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text("No route defined for ${settings.name}"),
          ),
        ));
    }
  }
}