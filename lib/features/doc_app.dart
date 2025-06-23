import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/core/di/dependency_injection.dart';
import 'package:learn/core/routing/app_routes.dart';
import 'package:learn/core/routing/routes.dart';
import 'package:learn/core/theming/app_colors.dart';
import 'package:learn/features/home/logic/home_cubit.dart';
import '../core/helpers/constants.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<HomeCubit>(
              create: (_) => getIt<HomeCubit>(),
            ),
          ],
          child: MaterialApp(
            title: "Doc App",
            theme: ThemeData(
              primaryColor: ColorsManger.minBlue,
              scaffoldBackgroundColor: Colors.white,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: isLoggedIn ? Routes.homeScreen : Routes.loginScreen,
            onGenerateRoute: appRouter.generatetRoute,
          ),
        );
      },
    );
  }
}
