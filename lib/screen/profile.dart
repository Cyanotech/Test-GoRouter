import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xffb7b0ff),
          leading: (GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 34.w,
            ),
            onTap: () {
              context.go('/home');
            },
          ))),
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(
            color: const Color(0xff5a529e),
            fontWeight: FontWeight.w500,
            fontSize: 21.w,
          ),
        ),
      ),
    );
  }
}
