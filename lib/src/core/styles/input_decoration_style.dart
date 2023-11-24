import 'package:flutter/material.dart';

class InputDecorationStyle {
  static InputDecoration defaultStyle({
    final IconData? prefixIcon,
  }) {
    return InputDecoration(
      prefixIcon: Icon(prefixIcon),
      filled: true,
      fillColor: Colors.white,
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      counter: const SizedBox.shrink(),
    );
  }
}
