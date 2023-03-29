import 'package:flutter/material.dart';
import 'package:safe_house/screens/home.dart';
import 'package:safe_house/screens/home_details.dart';
import 'package:safe_house/screens/welcome/login.dart';
import 'package:safe_house/screens/welcome/welcome.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "welcome_view": (context) => const WelcomeScreen(),
  "login_view": (context) => const Login(),
  "home_view": (context) => const Home(),
  "home_detail_view": (context) => const HomeDetailsScreen(),
};