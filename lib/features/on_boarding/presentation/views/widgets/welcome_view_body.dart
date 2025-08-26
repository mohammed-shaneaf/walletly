import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/styles/app_text_style.dart';
import 'package:walletly/core/utils/app_images.dart';
import 'package:walletly/core/utils/custom_primary_button.dart';
import 'package:walletly/core/utils/custom_secondry_button.dart';
import 'package:walletly/shared/app_spacing.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.horizontal,
      child: Column(
        children: [
          20.verticalSpace,
          Image.asset(Assets.assetsImagesOnBoardingOne),
          57.verticalSpace,
          Text('Welcome to Walletly', style: AppTextStyle.bold25),
          10.verticalSpace,
          Text(
            'We help you meet your savings target monthly and our emergency plans enable you save for multiple purposes.',
            textAlign: TextAlign.center,
            style: AppTextStyle.regular16,
          ),
          30.verticalSpace,
          CustomPrimaryButton(title: 'Create new account', onTap: () {}),
          15.verticalSpace,
          CustomSecondryButton(title: 'Log Into Your Account', onTap: () {}),
        ],
      ),
    );
  }
}
