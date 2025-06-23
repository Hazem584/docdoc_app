

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/core/di/dependency_injection.dart';
import 'package:learn/core/helpers/constants.dart';
import 'package:learn/core/helpers/extensions.dart';
import 'package:learn/core/helpers/shared_pref_helper.dart';
import 'package:learn/core/routing/app_routes.dart';
import 'package:learn/features/doc_app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedIn();
  runApp(DocApp(appRouter: AppRouter()));
}

checkIfLoggedIn() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (!userToken.isNullOrEmpty()) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}