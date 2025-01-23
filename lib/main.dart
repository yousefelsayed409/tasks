import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/routes/app_route.dart';

void main() {
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return  const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoute.signInScreen,
          onGenerateRoute: AppRoute.generateRoute,
        );
      },
    );

    
  }
}
