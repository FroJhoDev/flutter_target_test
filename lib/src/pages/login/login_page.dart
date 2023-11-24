import 'package:flutter/material.dart';

import 'components/login_form_component.dart';
import '../../core/widgets/gradient_background_widget.dart';
import '../../core/widgets/terms_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          GradientBackgroundWidget(),
          LoginFormComponent(),
          TermsWidget(),
        ],
      ),
    );
  }
}
