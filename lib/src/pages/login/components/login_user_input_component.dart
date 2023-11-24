import 'package:flutter/material.dart';

import 'package:target_test_flutter/src/core/styles/text_styles.dart';

import '../../../core/mixins/input_validations_mixin.dart';
import '../../../core/styles/input_decoration_style.dart';

class LoginUserInputComponent extends StatelessWidget with InputValidationsMixin {
  
  final TextEditingController userEditingController;

  LoginUserInputComponent({
    super.key,
    required this.userEditingController,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Usuário',
            style: context.textStyles.labelText,
          ),
        ),
        const SizedBox(height: 5.0),
        TextFormField(
          controller: userEditingController,
          decoration:
              InputDecorationStyle.defaultStyle(prefixIcon: Icons.person),
          maxLength: 20,
          onChanged: (inputValue) => userEditingController.text = inputValue.trim(),
          validator: (inputValue) => combine(
            [
              () => isNotEmpty(inputValue),
            ]
          ),
        ),
      ],
    );
  }
}
