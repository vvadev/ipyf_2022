import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  final String img;
  final double sigmaX;
  final double sigmaY;
  final Color backgroundColorFilter;
  final BoxFit imageBoxFit;
  const BackgroundImage(
      {Key? key,
      required this.child,
      required this.img,
      required this.sigmaX,
      required this.sigmaY,
      required this.backgroundColorFilter,
      required this.imageBoxFit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(img, fit: imageBoxFit),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
            child: Container(
              color: backgroundColorFilter,
              alignment: Alignment.center,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
