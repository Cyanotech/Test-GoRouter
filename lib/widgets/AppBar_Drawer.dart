import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor:Color(0xffe6e3ff),
      child: ListView(
     
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffb7b0ff),
            ),
            child: Icon(Icons.sunny,color: Colors.white,size: 44.w,)
          ),
          ListTile(
            title: Text("profile",style: TextStyle(fontSize: 16.w,fontWeight: FontWeight.w500,color: Color(
                0xffa9a2ff)),),
            onTap: () {
              context.go('/profile');
            },
          ),
          ListTile(
            title: const Text('گزینه ۲'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('گزینه ۲')));
            },
          ),
        ],
      ),
    );
  }
}