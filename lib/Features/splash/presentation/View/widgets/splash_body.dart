import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:lottie/lottie.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    navigateToHomeScreen();
  }

  Future<void> navigateToHomeScreen() async {
    await Future.delayed(const Duration(seconds: 6));
    // Ge.to(const HomePage(),
    //     transition: Transition.zoom, duration: kTransitionDuration);

    // ignore: use_build_context_synchronously
    GoRouter.of(context).replace(AppRouter.kHomeView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Lottie.asset(
            AssetsData.splashImage,
            width: 210,
            height: 210,
            fit: BoxFit.contain,
            repeat: false, // Set to false to play the animation only once
            reverse: false,
          ),
          const Text(
            "Books for the spotless minds",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
