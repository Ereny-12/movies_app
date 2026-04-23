import 'package:flutter/Material.dart';
import 'package:movies_app/core/resources/colors_manager.dart';

import '../../../core/resources/assets_manager.dart';
import '../../../core/shared_widgets/custom_text_field.dart';
import '../../../core/shared_widgets/elevated_button.dart';

class ForgetPassword extends StatelessWidget{
  const ForgetPassword({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.arrow_back , color: ColorsManager.yellow),
          title:  const Text("Forget Password" ,
            style: TextStyle(color: ColorsManager.yellow , fontSize: 20),),
            centerTitle: true,
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
          children: [
            const SizedBox(height: 50),
            Image(image: AssetImage(ImageAssets.character)),

            const SizedBox(height: 80),
            CustomTextField(hint: ' Email',
                icon: Icons.email_outlined ),
            const SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Verify Email',
              onPress: () {  },

            )
                ],
              ),
        ),
    );
  }

}