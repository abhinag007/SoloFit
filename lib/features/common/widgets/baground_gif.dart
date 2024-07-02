import 'dart:ui';

import 'package:flutter/material.dart';

Container bagroundGif(String path) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(path),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      color: Colors.black.withOpacity(0.4), // Adjust the opacity here
    ),
  );
}
