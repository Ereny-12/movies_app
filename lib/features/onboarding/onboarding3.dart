import 'package:flutter/material.dart';
import 'package:movies_app/features/onboarding/onboarding4.dart';
import '../../core/resources/assets_manager.dart';
import '../../core/resources/colors_manager.dart';
import '../../core/shared_widgets/elevated_button.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

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
                image: AssetImage(ImageAssets.page3),
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
                  ColorsManager.brown.withOpacity(0.4),
                  ColorsManager.brown.withOpacity(0.7),
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
                    "Explore All Genres",
                    style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
                    style: TextStyle(
                      color: ColorsManager.white.withAlpha(180),
                      fontSize: 15,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  Column(
                    children: [
                      CustomElevatedButton(
                        text: "Next", onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Onboarding4()));
                      },

                      ),
                      const SizedBox(height: 12),
                      CustomElevatedButton(
                        text: 'Back',
                        backgroundColor: Colors.transparent,
                        textColor: ColorsManager.yellow,
                        borderColor: ColorsManager.yellow,
                        onPress: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}