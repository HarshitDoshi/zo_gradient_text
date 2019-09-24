import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:zo_gradient_text/zo_gradient_text.dart';

void main() {
  test('Arguments and Parameter testing for ZOGradientText', () {
    final zogradienttext = ZOGradientText(
      'zo_gradient_text',
      50.0,
      FontWeight.bold,
      FontStyle.normal,
      TextAlign.center,
      [
        const Color(0xFFFFF59D),
        const Color(0xFFFFF176),
        const Color(0xFFFBC02D),
        const Color(0xFFF9A825),
      ],
    );
    expect(zogradienttext.text, 'zo_gradient_text');
    expect(zogradienttext.fontSize, 50.0);
    expect(zogradienttext.fontWeight, FontWeight.bold);
    expect(zogradienttext.fontStyle, FontStyle.normal);
    expect(zogradienttext.textAlignment, TextAlign.center);
    expect(zogradienttext.gradientColorsList, [
      const Color(0xFFFFF59D),
      const Color(0xFFFFF176),
      const Color(0xFFFBC02D),
      const Color(0xFFF9A825),
    ]);
  });
}