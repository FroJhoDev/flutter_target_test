import 'package:flutter/material.dart';
import 'package:target_test_flutter/src/core/styles/text_styles.dart';

class HomeEmptyListMenssageComponent extends StatelessWidget {
  const HomeEmptyListMenssageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Text(
          'Você ainda não possui nenhum registro cadastrado...',
          textAlign: TextAlign.center,
          style: context.textStyles.listTileText,
        ),
      ),
    );
  }
}
