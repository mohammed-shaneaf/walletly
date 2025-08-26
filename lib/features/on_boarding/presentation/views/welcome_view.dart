import 'package:flutter/material.dart';
import 'package:walletly/features/on_boarding/presentation/views/widgets/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const WelcomeViewBody()));
  }
}
