import 'package:flutter/material.dart';
import '../../core/resources/assets_manager.dart';
import '../../core/resources/colors_manager.dart';
import '../../core/shared_widgets/elevated_button.dart';
import 'onboarding3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.page2),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  ColorsManager.black.withOpacity(0.4),
                  ColorsManager.black.withOpacity(0.9),
                ],
                stops: const [0.0, 0.6, 1.0],
              ),
            ),
          ),

          Positioned(
            bottom: 15,
            left: 5,
            right: 5,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: ColorsManager.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(34),
                  topRight: Radius.circular(34),
                ),
                border: Border.all(color: ColorsManager.white),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Discover Movies",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Explore a vast collection of movies in all qualities and genres Find your next favorite film with ease",
                    style: TextStyle(
                      color: Colors.white.withAlpha(180),
                      fontSize: 15,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: CustomElevatedButton(
                      text: "Next", onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Onboarding3()));
                    },

                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}