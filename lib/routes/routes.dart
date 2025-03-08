import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_rout/routes/route_name.dart';
import 'package:test_rout/screen/home.dart';
import 'package:test_rout/screen/profile.dart';
import 'package:test_rout/screen/result.dart';

initGoRouter() {
  return GoRouter(initialLocation: '/home', routes: [
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/profile', builder: (context, state) => Profile()),
    GoRoute(
        name: RouteName.resultPage,
        path: '/result-path',
        builder: (context, state) {
          final resultString = state.uri.queryParameters["calculateResult"];
          if (resultString == null) {
            debugPrint("Missing resultCalculate parameter");
          }

          final result = double.tryParse(resultString!);
          if (result == null) {
            debugPrint("Invalid result value");
          }

          return ResultScreen(result: result);
        }),
  ]);
}
