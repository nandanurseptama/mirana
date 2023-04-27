import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<BitmapDescriptor> generateBitmapDescriptorFromIconData(
    {required IconData icon, Color color = Colors.purple}) async {
  final pictureRecorder = PictureRecorder();
  final canvas = Canvas(pictureRecorder);
  final textPainter = TextPainter(textDirection: TextDirection.ltr);
  final iconStr = String.fromCharCode(icon.codePoint);
  textPainter.text = TextSpan(
      text: iconStr,
      style: TextStyle(
        letterSpacing: 0.0,
        fontSize: 86.0,
        fontFamily: icon.fontFamily,
        color: color,
      ));
  textPainter.layout();
  textPainter.paint(canvas, Offset.zero);

  final picture = pictureRecorder.endRecording();
  final image = picture.toImageSync(72, 72);
  final bytes = await image.toByteData(format: ImageByteFormat.png);
  return BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
}
