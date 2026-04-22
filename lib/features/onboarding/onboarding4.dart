import 'package:flutter/material.dart';
import '../../core/resources/assets_manager.dart';
import '../../core/resources/colors_manager.dart';
import '../../core/shared_widgets/elevated_button.dart';
import 'onboarding5.dart';

class Onboarding4 extends StatelessWidget {
  const Onboarding4({super.key});

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
                image: AssetImage(ImageAssets.page4),
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
                  ColorsManager.purple.withOpacity(0.4),
                  ColorsManager.purple.withOpacity(0.9),
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
                    "Create Watchlists",
                    style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
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
                            MaterialPageRoute(builder: (context) => const Onboarding5()));
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