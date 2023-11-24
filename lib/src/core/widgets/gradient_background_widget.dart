import 'package:flutter/material.dart';
import 'package:target_test_flutter/src/core/helpers/size_extensions.dart';

class GradientBackgroundWidget extends StatelessWidget {
  const GradientBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.blue.shade700,
            Colors.lightBlue.shade300,
          ],
        ),
      ),
    );
  }
}
