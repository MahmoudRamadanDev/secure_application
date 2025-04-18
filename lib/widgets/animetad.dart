import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:secure_mindes/views/encryption.dart';

class Animated extends StatelessWidget {
  const Animated({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: LottieBuilder.asset("assets/lottie/Animation - 1744910132615.json") , ),
      ],
    ),
    splashIconSize: MediaQuery.of(context).size.width ,
    nextScreen: const HomeView(),
    backgroundColor: Colors.blueAccent,
    );
  }
}