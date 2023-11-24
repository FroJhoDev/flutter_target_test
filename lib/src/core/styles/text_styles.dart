import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  TextStyle get labelText => const TextStyle(color: Colors.white, fontSize: 16.0);

  TextStyle get listTileText => const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0);
}

extension TextStyleExtension on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
