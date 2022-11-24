import 'package:flutter/material.dart';
import 'component/component.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          OnboardingImages(),
          OnboardingTitle(),
          OnboardingIndicator(),
          OnboardingButton(),
        ],
      ),
    );
  }
}
