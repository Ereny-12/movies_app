import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/assets_manager.dart';

import '../../core/resources/colors_manager.dart';
import '../../core/shared_widgets/custom_text_field.dart';
import '../../core/shared_widgets/elevated_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  ColorsManager.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: ColorsManager.yellow),
        title: const Text('Register', style: TextStyle(color: ColorsManager.yellow)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 CircleAvatar(
                  radius: 35,
                  backgroundImage:AssetImage(ImageAssets.gamer1),
                ),
                const SizedBox(width: 10),
                 CircleAvatar(
                  radius: 55,
                  backgroundImage:  AssetImage(ImageAssets.gamer2),
                ),
                const SizedBox(width: 10),
                 CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(ImageAssets.gamer3),
                ),
              ],
            ),
            const SizedBox(height: 10),
             Text('Avatar', style: TextStyle(color: ColorsManager.white, fontSize: 16)),
            const SizedBox(height: 30),
            CustomTextField(
             hint:'Name' ,
              icon:Icons.person ,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              hint: ' Email',
                icon: Icons.email_outlined
            ),
            const SizedBox(height: 15),
            CustomTextField(
              hint: 'Password',
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              hint: 'Confirm Password',
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              hint: 'Phone Number',
              icon: Icons.phone_outlined,
            ),
            const SizedBox(height: 30),
            CustomElevatedButton(
              text: 'Create Account',
              onPress: () {

              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have Account? ", style: TextStyle(color: ColorsManager.white)),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text("Login", style: TextStyle(color: ColorsManager.yellow, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}