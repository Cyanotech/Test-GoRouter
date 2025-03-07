import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ResultScreen extends StatelessWidget {
  final double? result;

  const ResultScreen({super.key, this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: (
            GestureDetector(
              child: Icon(Icons.arrow_back,color: Colors.white,size: 34.w,),
              onTap: (){
                context.go('/home');
              },
            ))
       , backgroundColor: const Color(0xffb7b0ff),
      ),
      body: Center(
        child: result != null
            ? Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                          'نتیجه: $result',
                          style: TextStyle(
                fontSize: 21.w,
                color: const Color(0xff5a529e),
                          ),
                        ),
                Text("خسته نباشید....")
              ],
            )
            : const Text('نتیجه‌ای برای نمایش نیست'),
      ),
    );
  }
}