import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solo_fit/core/constants/app_images.dart';
import 'package:solo_fit/core/constants/app_strings.dart';
import 'package:solo_fit/core/constants/colors_constants.dart';
import 'package:solo_fit/core/utils/responsive_util.dart';
import 'package:solo_fit/features/auth/screens/login.dart';
import 'package:solo_fit/features/auth/widgets/custom_signup.dart';
import 'package:solo_fit/features/common/widgets/baground_gif.dart';
import 'package:solo_fit/features/common/widgets/common_widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          bagroundGif(path: slb2Gif, opacity: 0.2),
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              backgroundImageEyeOpen2, // Replace with your foreground image path
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            top: SizeConfig.blockSizeVertical * 25,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                soloFit,
                style: textStyle(48, colorWhite),
              ),
            ),
          ),
          Positioned.fill(
            top: SizeConfig.blockSizeVertical * 35,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                signupTag,
                style: textStyle(28, colorWhite),
              ),
            ),
          ),
          Positioned.fill(
            top: SizeConfig.blockSizeVertical * 45,
            child: CustomFieldsSignup(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "$alreadyHaveAccount ",
                      style: TextStyle(fontSize: 24),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(LoginPage()),
                      child: const Text(
                        signin,
                        style: TextStyle(
                          fontSize: 24,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
