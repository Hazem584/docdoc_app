

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/core/di/dependency_injection.dart';
import 'package:learn/core/routing/app_routes.dart';
import 'package:learn/features/doc_app.dart';

void main()async{
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}