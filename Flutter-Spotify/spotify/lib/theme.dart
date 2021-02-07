import 'package:flutter/material.dart';

final fontSpotify = 'Gotham';

BoxDecoration radialGradGREY = BoxDecoration(
  gradient: RadialGradient(
    colors: [
      Colors.grey[400].withOpacity(0.81),
      Color(0x000000).withOpacity(1),
    ],
    center: Alignment(0, -2),
    radius: 2,
  ),
);
