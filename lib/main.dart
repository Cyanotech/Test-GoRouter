import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_rout/screen/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_rout/screen/profile.dart';
import 'package:test_rout/screen/result.dart';


final GoRouter _route =GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home',builder: (context,state)=> HomeScreen()),
    GoRoute(path:'/profile',builder: (context,state)=> Profile() ),
    GoRoute(path: '/result',builder: (context, state) {
      final result = state.extra as double?;
      return ResultScreen(result: result);
    }),
  ]
);


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
          routerConfig: _route,

          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}



