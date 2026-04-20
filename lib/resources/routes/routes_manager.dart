import 'package:flutter/cupertino.dart';

import '../../features/register/register.dart';
import '../../features/splash/splash.dart';

class RoutesManagers {
  static const String splash = "/splash";
  static const String register = "/register";


  static Map<String, WidgetBuilder> routes = {
    register: (_) => Register(),

    splash: (_) => Splash(),

  };
}