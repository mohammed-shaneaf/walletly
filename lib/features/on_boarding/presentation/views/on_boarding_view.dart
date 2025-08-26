import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walletly/constants.dart';
import 'package:walletly/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:walletly/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingCubit>(
      create: (context) => OnboardingCubit(length: kOnboardingSlides.length),
      child: Scaffold(body: OnBoardingViewBody(slides: kOnboardingSlides)),
    );
  }
}
