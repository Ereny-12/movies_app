import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/colors_manager.dart';
import 'package:movies_app/core/shared_widgets/elevated_button.dart';
import '../../core/shared_widgets/custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(Icons.play_circle_fill, size: 100, color: ColorsManager.yellow),
                 SizedBox(height: 40),
                 CustomTextField(hint: ' Email', icon: Icons.email_outlined ),
                 SizedBox(height: 15),
                 CustomTextField(hint: "Password" , icon: Icons.lock_outline, isPassword: true),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Forget Password ?', style: TextStyle(color: ColorsManager.yellow)),
                  ),
                ),
                const SizedBox(height: 20),
                CustomElevatedButton(text: 'Login', onPress: () {  }, ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don’t Have Account ? ", style: TextStyle(color: ColorsManager.white)),
                    GestureDetector(
                      onTap: () {},
                      child: const Text("Create Oneً", style: TextStyle(color: ColorsManager.yellow, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text("Or", style: TextStyle(color: ColorsManager.yellow)),
                ),

                CustomElevatedButton(
                    text: 'Login With Google', onPress: () {

                },

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}