import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:target_test_flutter/src/core/styles/text_styles.dart';

class TermsWidget extends StatelessWidget {
  const TermsWidget({super.key});

  launchUserPolicies() async {
    await launchUrl(Uri.parse('https://google.com.br'), mode: LaunchMode.inAppBrowserView);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: InkWell(
          onTap: () => launchUserPolicies(),
          child: Text(
            'Política de Privacidade',
            style: context.textStyles.labelText.copyWith(fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
