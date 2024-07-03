import 'dart:ui';

import 'package:flutter/material.dart';

Container bagroundGif({required String path, required double opacity}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(path),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      color: Colors.black.withOpacity(opacity), // Adjust the opacity here
    ),
  );
}
