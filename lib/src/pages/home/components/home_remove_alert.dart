import 'package:flutter/material.dart';

import 'package:target_test_flutter/src/core/styles/text_styles.dart';

class HomeRemoveAlert extends StatelessWidget {

  final Function() onConfirmPressed;

  const HomeRemoveAlert({
    super.key,
    required this.onConfirmPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Atenção!',
        style: context.textStyles.listTileText.copyWith(
          color: Colors.red,
        ),
      ),
      content: Text(
        'Tem certeza que deseja excluir o registro?',
        style: context.textStyles.labelText.copyWith(
          color: Colors.black,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Cancelar',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),
        TextButton(
          onPressed: onConfirmPressed,
          child: const Text('Confirmar'),
        ),
      ],
    );
  }
}
