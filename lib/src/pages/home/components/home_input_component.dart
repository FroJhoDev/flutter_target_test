import 'package:flutter/material.dart';

import 'package:target_test_flutter/src/core/styles/text_styles.dart';

class HomeInputComponent extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode textFocusNode;
  final Function(String) onSubmitted;

  const HomeInputComponent({
    super.key,
    required this.textEditingController,
    required this.textFocusNode,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      focusNode: textFocusNode,
      textAlign: TextAlign.center,
      style: context.textStyles.listTileText,
      maxLength: 20,
      decoration: InputDecoration(
        hintText: 'Digite seu texto',
        hintStyle: context.textStyles.listTileText,
        alignLabelWithHint: true,
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        counterText: '',
      ),
      onSubmitted: onSubmitted,
      textInputAction: TextInputAction.done,
      autofocus: true,
    );
  }
}
