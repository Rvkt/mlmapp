import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mlmapp/ui/screens/home/home_screen.dart';
import 'package:mlmapp/ui/screens/intro/intro_screen.dart';
import 'package:mlmapp/ui/screens/login/login_screen.dart';
import 'package:mlmapp/ui/screens/register/register_screen.dart';
// import 'package:'

void main() {
  runApp(const MlmApp());
}

class MlmApp extends StatefulWidget {
  const MlmApp({Key? key}) : super(key: key);

  @override
  State<MlmApp> createState() => _MlmAppState();
}

class _MlmAppState extends State<MlmApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: AnimatedSplashScreen(
        splashIconSize: double.maxFinite,
        splash: Image.asset(
          'assets/images/logo_black.png',
        ),
        nextScreen: const IntroScreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
      routes: {
        'login': (context) => const LoginScreen(),
        'register': (context) => const RegisterScreen(),
        'home': (context) => const HomeScreen(),
      },
    );
  }
}
