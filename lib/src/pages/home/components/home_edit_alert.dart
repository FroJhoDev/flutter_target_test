import 'package:flutter/material.dart';

import 'package:target_test_flutter/src/core/styles/text_styles.dart';

class HomeEditAlert extends StatelessWidget {

  final TextEditingController textEditFieldController;
  final Function() onConfirmPressed;

  const HomeEditAlert({
    super.key,
    required this.textEditFieldController,
    required this.onConfirmPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Editar Resgistro',
        style: context.textStyles.listTileText,
      ),
      content: TextField(
        controller: textEditFieldController,
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
