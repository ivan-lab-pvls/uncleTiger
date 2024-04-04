import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/main.dart';
import 'package:fortune_tiger_app/pages/home_page.dart';
import 'package:fortune_tiger_app/pages/onboarding_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      splashIconSize: double.infinity,
      splash: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/bg.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset(
                'assets/icon.png',
                scale: 1.8,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 207,
                  height: 21,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: const Color(0xFfFFD092),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                  left: -5,
                  child: LinearPercentIndicator(
                    width: 218.0,
                    barRadius: const Radius.circular(7),
                    lineHeight: 15.0,
                    animation: true,
                    animationDuration: 1500,
                    animateFromLastPercent: true,
                    percent: 1.0,
                    backgroundColor: const Color(0xFFC50802),
                    progressColor: const Color(0xFFFEBD31),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      nextScreen: initScreen == 0 || initScreen == null
          ? const OnBoardingPage()
          : const HomePage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
