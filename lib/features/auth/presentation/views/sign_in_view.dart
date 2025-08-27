import 'package:flutter/material.dart';
import 'package:walletly/features/auth/presentation/views/widgets/sign_in_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SignInViewBody()));
  }
}
