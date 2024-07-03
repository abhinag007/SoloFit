import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solo_fit/core/constants/colors_constants.dart';

class TransparentButton extends StatelessWidget {
  final String text;
  final String? imagePath;
  final VoidCallback onPressed;
  final double width;

  TransparentButton({
    required this.text,
    this.imagePath,
    required this.onPressed,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: colorWhite, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
                visible: imagePath != null,
                child:
                    imagePath != null ? Image.asset(imagePath!) : Container()),
            Visibility(visible: imagePath != null, child: SizedBox(width: 8)),
            Text(
              text,
              style: const TextStyle(
                color: colorWhite,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
