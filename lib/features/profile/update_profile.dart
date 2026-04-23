import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

import '../../core/resources/assets_manager.dart';
import '../../core/resources/colors_manager.dart';
import '../../core/shared_widgets/custom_text_field.dart';
import '../../core/shared_widgets/elevated_button.dart';

class UpdateProfile extends StatelessWidget{
  const UpdateProfile({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorsManager.black,
      appBar:_buildAppBar (),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage:AssetImage(ImageAssets.gamer2),
            ),
            const SizedBox(height: 30,),
            CustomTextField(hint: 'John', icon: Icons.person,),
            const SizedBox(height: 20,),
            CustomTextField(hint: '01234567892', icon: Icons.phone,),
            const SizedBox(height: 10,),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text("Reset Password" ,style: TextStyle(color: ColorsManager.white, ),),
                )),
                Spacer(),

            CustomElevatedButton(
              text: 'Delete Account',
              textColor:  ColorsManager.white,
              backgroundColor: ColorsManager.red,
              onPress: () {  },),
              const SizedBox(height: 20,),
            CustomElevatedButton(
              text: 'Update Data',
              onPress: () {  },)
          ],
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: const Icon(Icons.arrow_back, color: ColorsManager.yellow),
    title: const Text("Pick Avatar",
        style: TextStyle(color: ColorsManager.yellow, fontSize: 20)),
    centerTitle: true,
  );
}