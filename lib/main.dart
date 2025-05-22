import 'package:flutter/material.dart';
import 'package:learn/core/routing/app_routes.dart';
import 'core/di/dependency_injection.dart';

import 'features/doc_app.dart';

void main() {
  setupGetIt();
  runApp( DocApp(appRouter: AppRouter(),));
}



