import 'package:flutter/material.dart';
import 'package:movies_app/features/login/forget_password/forget_password.dart';
import 'package:movies_app/features/profile/update_profile.dart';
import 'package:movies_app/features/register/register.dart';
import 'package:movies_app/features/search_screen/search_screen.dart';
import '../../../features/login/login.dart';
import '../../../features/movie_home/movie_home.dart';
import '../../../features/onboarding/onboarding1.dart';
import '../../../features/onboarding/onboarding2.dart';
import '../../../features/onboarding/onboarding3.dart';
import '../../../features/onboarding/onboarding4.dart';
import '../../../features/splash/splash.dart';

class AppRouter {
  static const String splash = "/splash";
  static const String login = "/login";
  static const String register = "/register";
  static const String forget_password = "/forget_password";
  static const String movieHome = "/MovieHome";
  static const String searchScreen = "/searchScreen";
  static const String updateProfile = "/updateProfile";
  static const String onBoarding1 = "/onBoarding1";
  static const String onBoarding2 = "/onBoarding2";
  static const String onBoarding3 = "/onBoarding3";
  static const String onBoarding4 = "/onBoarding4";

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const Splash());

      case login:
        return MaterialPageRoute(builder: (_) => const Login());

      case register:
        return MaterialPageRoute(builder: (_)=> const Register());

      case forget_password:
        return  MaterialPageRoute(builder: (_)=> const ForgetPassword());

      case movieHome:
        return MaterialPageRoute(builder: (_)=>  MovieHome());

      case searchScreen:
        return MaterialPageRoute(builder: (_)=> SearchScreen());

      case updateProfile:
        return MaterialPageRoute(builder: (_)=> UpdateProfile());
      case onBoarding1:
        return MaterialPageRoute(builder: (_) => const Onboarding1());

      case onBoarding2:
        return MaterialPageRoute(builder: (_) => const Onboarding2());

      case onBoarding3:
        return MaterialPageRoute(builder: (_) => const Onboarding3());

      case onBoarding4:
        return MaterialPageRoute(builder: (_) => const Onboarding4());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}