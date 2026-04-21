import 'package:flutter/cupertino.dart';


import '../../features/onboarding/onboarding1.dart';
import '../../features/onboarding/onboarding2.dart';
import '../../features/onboarding/onboarding3.dart';
import '../../features/onboarding/onboarding4.dart';
import '../../features/splash/splash.dart';

class RoutesManagers {
  static const String splash = "/splash";
  static const String onBoarding1 = "/onBoarding1";
  static const String onBoarding2 = "/onBoarding2";
  static const String onBoarding3 = "/onBoarding3";
  static const String onBoarding4 = "/onBoarding4";
  static const String onBoarding5 = "/onBoarding5";



  static Map<String, WidgetBuilder> routes = {
    onBoarding1: (_) => Onboarding1(),
    onBoarding2: (_) => Onboarding2(),
    onBoarding3: (_) => Onboarding3(),
    onBoarding4: (_) => Onboarding4(),

    splash: (_) => Splash(),


  };
}