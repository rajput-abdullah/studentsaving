import 'package:flutter/material.dart';
import 'package:studentsaving/Pages/splash_screen.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/SplashScreen',
  routes: {
    '/SplashScreen': (context) => const SplashScreen(),

  },
));
