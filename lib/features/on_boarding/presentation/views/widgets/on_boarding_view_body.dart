import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:walletly/core/app/app_name.dart';
import 'package:walletly/features/on_boarding/domain/on_boarding_slide.dart';
import 'package:walletly/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:walletly/features/on_boarding/presentation/manager/on_boarding_state.dart';
import 'package:walletly/features/on_boarding/presentation/views/widgets/dots_indicator.dart';
import 'package:walletly/shared/app_spacing.dart';

class OnBoardingViewBody extends StatelessWidget {
  final List<OnBoardingSlide> slides;
  const OnBoardingViewBody({super.key, required this.slides});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Padding(
      padding: AppSpacing.onBoarding,
      child: Column(
        children: [
          Expanded(
            child: BlocListener<OnboardingCubit, OnboardingState>(
              listener: (context, state) {
                // Sync page controller with Cubit's index
                pageController.jumpToPage(state.index);
              },
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (i) {
                  context.read<OnboardingCubit>().onPageChanged(i);
                },
                itemCount: slides.length,
                itemBuilder: (context, i) {
                  final slide = slides[i];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(slide.asset),
                      const SizedBox(height: 24),
                      Text(slide.title),
                      const SizedBox(height: 8),
                      Text(slide.description),
                    ],
                  );
                },
              ),
            ),
          ),
          BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              return Dots(index: state.index, length: slides.length);
            },
          ),
          SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: FilledButton(
                    onPressed: () {
                      if (state.isLast) {
                        context.go(
                          AppName.welcome,
                        ); // Navigate to the next page
                      } else {
                        context.read<OnboardingCubit>().next();
                      }
                    },
                    child: Text(state.isLast ? 'Get Started' : 'Next'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
