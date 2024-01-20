import 'package:books_app/Features/HomePage/presentation/view/home_view.dart';
import 'package:books_app/constent.dart';
import 'package:books_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
    _navigateToMainScreen();
  }

  Future<void> _navigateToMainScreen() async {
    await Future.delayed(
        const Duration(seconds: 6)); // Adjust the delay as needed
    // ignore: use_build_context_synchronously
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => const HomePage()),
    // );
    Get.to(const HomePage(),
        transition: Transition.zoom, duration: kTransitionDuration);
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
