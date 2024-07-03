import 'package:flutter/material.dart';
import 'package:solo_fit/core/constants/app_strings.dart';
import 'package:solo_fit/features/auth/widgets/custom_textfield.dart';
import 'package:solo_fit/features/common/widgets/transparent_button.dart';

class CustomFieldsLogin extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CustomTextField(
            controller: emailController,
            labelText: enterUsernameOrEmail,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            controller: passwordController,
            labelText: enterPassword,
            isPassword: true,
          ),
          const SizedBox(height: 36),
          TransparentButton(
            text: loginButtonText,
            width: 150,
            onPressed: () {
              // Handle button press
              print('Button Pressed!');
            },
          ),
          const SizedBox(height: 36),
          TransparentButton(
            text: loginFromGoogle,
            width: 260,
            imagePath: 'assets/icons/google.png',
            onPressed: () {
              // Handle button press
              print('Button Pressed!');
            },
          ),
          const SizedBox(height: 12),
          TransparentButton(
            text: loginFromMeta,
            width: 260,
            imagePath: 'assets/icons/meta.png',
            onPressed: () {
              // Handle button press
              print('Button Pressed!');
            },
          ),
        ],
      ),
    );
  }
}
