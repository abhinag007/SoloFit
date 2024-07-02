import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BackgroundImageExample extends StatelessWidget {
  final String path;
  const BackgroundImageExample({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path), // Path to your PNG image
          fit: BoxFit.cover, // This will stretch or shrink the image as necessary
        ),
      ),
    );
  }
}