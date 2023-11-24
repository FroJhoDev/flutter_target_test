import 'package:flutter/material.dart';

import 'package:target_test_flutter/src/core/styles/text_styles.dart';

class LoginButtonComponent extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  const LoginButtonComponent({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: context.textStyles.labelText,
          ),
        ),
      ],
    );
  }
}
