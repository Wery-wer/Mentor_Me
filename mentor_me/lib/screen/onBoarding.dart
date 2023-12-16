import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              //width: 20,
              padding: EdgeInsets.symmetric(horizontal: 110, vertical: 40),
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 0),
                  Container(
                    alignment: Alignment.center,
                    width: 500,
                    height: 600,
                    child: RiveAnimation.asset(
                      "assets/rive/onboarding.riv",
                      fit: BoxFit.fill, // or BoxFit.fill
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
