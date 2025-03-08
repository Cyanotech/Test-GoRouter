import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_rout/routes/route_name.dart';
import '../widgets/AppBar_Drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  double? _result;

  void _calculateSum() {
    setState(() {
      double num1 = double.tryParse(_controller1.text) ?? 0;
      double num2 = double.tryParse(_controller2.text) ?? 0;
      _result = num1 + num2;
      // context.go('/result?resultn=${_result}');
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: TextStyle(color: Colors.white, fontSize: 16.w),
        ),
        backgroundColor: Color(0xffb7b0ff),
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ],
      ),
      drawer: DrawerAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(18.w),
              child: Text(
                "Send me the numbers so I can tell you what their sum is",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.w,
                    color: Color(0xff6e59ff)),
              ),
            ),
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Add number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.h),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Add number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              onPressed: () {
                _calculateSum();
                /// Use queryParameters for optional values, and pathParameters when passing required data.
                context.pushNamed(RouteName.resultPage,
                    queryParameters: {"calculateResult": "$_result"});
                // context.go('/result', extra: _result);
              },
              child: Text(
                'Sum',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.w,
                    color: Color(0xff6e59ff)),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
