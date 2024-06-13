import 'package:flutter/material.dart';
import 'package:flutter_coffesshop_ui/pages/home/dasboard_pages.dart';
import 'package:flutter_coffesshop_ui/widgets/button_primary.dart';
import 'package:gap/gap.dart';

class OnboardPages extends StatelessWidget {
  const OnboardPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
              alignment: Alignment.center, child: Image.asset('assets/bg.png')),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    Color(0xff050505),
                    Color(0xff050505),
                    Color(0xff050505),
                    Color(0xff050505),
                  ])),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Gap(40),
                  const Text(
                    "Fall in Love with Coffee in Blissful Delight!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, //semi bold
                        fontSize: 32,
                        color: Color(0xffFFFFFF),
                        height: 1.45,
                      ),
                  ),
                  const Gap(8),
                  const Text(
                    "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color(0xffA2A2A2),
                    ),
                  ),
                  const Gap(30),
                  ButtonPrimary(
                      title: 'Get Started',
                      onTap: () {
                        Navigator.popAndPushNamed(context, '/dashboard');
                      }),
                  const Gap(40),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
