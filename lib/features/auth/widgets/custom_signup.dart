import 'package:flutter/material.dart';
import 'package:solo_fit/core/constants/app_strings.dart';
import 'package:solo_fit/features/auth/widgets/custom_textfield.dart';
import 'package:solo_fit/features/common/widgets/transparent_button.dart';

class CustomFieldsSignup extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  CustomFieldsSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CustomTextField(
            controller: emailController,
            labelText: enterEmailAddress,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            controller: passwordController,
            labelText: enterPassword,
            isPassword: true,
          ),
          const SizedBox(height: 36),
          TransparentButton(
            text: signup,
            width: 150,
            onPressed: () {
              // Handle button press
              print('Button Pressed!');
            },
          ),
          const SizedBox(height: 36),
          TransparentButton(
            text: signupFromGoogle,
            width: 260,
            imagePath: 'assets/icons/google.png',
            onPressed: () {
              // Handle button press
              print('Button Pressed!');
            },
          ),
          const SizedBox(height: 12),
          TransparentButton(
            text: signupFromMeta,
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
