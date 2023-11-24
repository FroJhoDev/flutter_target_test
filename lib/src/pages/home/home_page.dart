import 'package:flutter/material.dart';

import '../../core/widgets/gradient_background_widget.dart';
import '../../core/widgets/terms_widget.dart';

import 'components/home_body_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackgroundWidget(),
          HomeBodyComponent(),
          const TermsWidget(),
        ],
      ),
    );
  }
}
