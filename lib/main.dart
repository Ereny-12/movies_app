import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/splash/splash.dart';
import 'package:movies_app/resources/routes/routes_manager.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,child)=> MaterialApp( debugShowCheckedModeBanner: false,
          routes:RoutesManagers.routes ,
          initialRoute:RoutesManagers.splash)
    );
  }
}
