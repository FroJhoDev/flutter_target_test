import 'package:flutter/material.dart';
import 'package:target_test_flutter/src/core/styles/text_styles.dart';

class LoginErrorMenssageComponent extends StatelessWidget {
  const LoginErrorMenssageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
          ),
          const SizedBox(width: 5.0),
          Text(
            'Erro, Usuário ou Senha Inválidos!',
            style: context.textStyles.labelText.copyWith(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
