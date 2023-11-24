import 'package:flutter/material.dart';
import 'package:target_test_flutter/src/core/styles/text_styles.dart';

import '../../../core/mixins/input_validations_mixin.dart';
import '../../../core/styles/input_decoration_style.dart';

class LoginPasswordInputComponent extends StatelessWidget with InputValidationsMixin {

  final TextEditingController passwordEditingController;

  LoginPasswordInputComponent({super.key, required this.passwordEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Senha',
            style: context.textStyles.labelText,
          ),
        ),
        const SizedBox(height: 5.0),
        TextFormField(
          controller: passwordEditingController,
          decoration: InputDecorationStyle.defaultStyle(prefixIcon: Icons.lock),
          maxLength: 20,
          obscureText: true,
          onChanged: (inputValue) =>
              passwordEditingController.text = inputValue.trim(),
          validator: (inputValue) => combine(
            [
              () => isNotEmpty(inputValue),
              () => isValidPassword(inputValue),
              () => hasMinChars(inputValue),
            ],
          ),
        ),
      ],
    );
  }
}
