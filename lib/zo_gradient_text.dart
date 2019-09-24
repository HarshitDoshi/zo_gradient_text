library zo_gradient_text;

import 'package:flutter/material.dart';

class ZOGradientText extends StatefulWidget {
  ZOGradientText(
      this.text,
      this.fontSize,
      this.fontWeight,
      this.fontStyle,
      this.textAlignment,
      this.gradientColorsList,
      );

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final TextAlign textAlignment;
  final List<Color> gradientColorsList;

  @override
  _ZOGradientTextState createState() => _ZOGradientTextState();
}

class _ZOGradientTextState extends State<ZOGradientText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          final gradient = LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: widget.gradientColorsList,
            stops: [0.0, 0.33, 0.66, 1.0],
            tileMode: TileMode.mirror,
          );
          return gradient.createShader(Offset.zero & bounds.size);
        },
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            fontStyle: widget.fontStyle,
            color: Colors.white,
          ),
          textAlign: widget.textAlignment,
        ),
      ),
    );
  }
}