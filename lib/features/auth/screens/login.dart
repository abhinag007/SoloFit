import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solo_fit/core/constants/app_images.dart';
import 'package:solo_fit/core/constants/app_strings.dart';
import 'package:solo_fit/core/constants/colors_constants.dart';
import 'package:solo_fit/core/utils/responsive_util.dart';
import 'package:solo_fit/features/auth/widgets/custom_login.dart';
import 'package:solo_fit/features/common/widgets/baground_gif.dart';
import 'package:solo_fit/features/common/widgets/common_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          bagroundGif(path: sl1Gif, opacity: 0.6),
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
            top: SizeConfig.blockSizeVertical * 45,
            child: CustomFieldsLogin(),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$dontHaveAccount ",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "$signup",
                      style: TextStyle(
                        fontSize: 24,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                SizedBox(
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
