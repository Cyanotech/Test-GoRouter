import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_rout/routes/routes.dart';
import 'package:test_rout/screen/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_rout/screen/profile.dart';
import 'package:test_rout/screen/result.dart';

// TODO: need be in a single file not in main file
// GoRouter(initialLocation: '/home', routes: [
// ..........


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: initGoRouter(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
