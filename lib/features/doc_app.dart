
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/core/routing/app_routes.dart';
import 'package:learn/core/routing/routes.dart';
import 'package:learn/core/theming/app_colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812) ,
      minTextAdapt: true,
     child:MaterialApp(
       title:"Doc App",
       theme: ThemeData(
         primaryColor: ColorsManger.minBlue,
         scaffoldBackgroundColor: Colors.white,
       ),
       debugShowCheckedModeBanner: false,
       initialRoute: Routes.onBordingScreen,
       onGenerateRoute: appRouter.generatetRoute,
     ) ,
    );
  }
}
