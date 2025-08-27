import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/styles/app_text_style.dart';
import 'package:walletly/core/theme/app_colors.dart';
import 'package:walletly/core/utils/custom_primary_button.dart';
import 'package:walletly/shared/app_spacing.dart';
import 'package:walletly/shared/custom_text_form_field.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppSpacing.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            80.verticalSpace,
            Text(
              'Sign into Your Account',
              style: AppTextStyle.bold35.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            20.verticalSpace,
            Text('Log into Your Walletly Account.'),
            40.verticalSpace,
            Text('Email  :', style: AppTextStyle.bold14),
            10.verticalSpace,
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'Enter Your Email',
            ),
            20.verticalSpace,
            Text('Password ', style: AppTextStyle.bold14),
            10.verticalSpace,
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'Enter Your Password',
            ),
            16.verticalSpace,
            Text('Have You forgotten your password ?'),
            10.verticalSpace,
            GestureDetector(
              child: Text(
                'Click Here To Recover it',
                style: AppTextStyle.bold14.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            70.verticalSpace,
            Center(
              child: CustomPrimaryButton(
                title: 'Create Your Account',
                onTap: () {},
              ),
            ),
            20.verticalSpace,
            Text.rich(
              TextSpan(
                text: 'Don\'t have an account ? ',
                style: AppTextStyle.bold14,
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: AppTextStyle.bold14.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
