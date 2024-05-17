import 'package:flutter/material.dart';
import 'package:mab/screens/onboarding/onboarding_view.dart';
import 'package:mab/shared/components/components.dart';
import 'package:mab/shared/styles/colors.dart';

import 'fadein_image.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 6),
      (() {
        navigateAndFinish(context, OnBoardingView());
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kLightTeal,
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: FadeInImageWidget(
          imageUrl: 'assets/images/logo-splash.png',
        ),
      ),
    );
  }
}
