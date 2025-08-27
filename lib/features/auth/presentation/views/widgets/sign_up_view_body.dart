import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/styles/app_text_style.dart';
import 'package:walletly/core/theme/app_colors.dart';
import 'package:walletly/shared/app_spacing.dart';
import 'package:walletly/shared/custom_text_form_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
              'Create Account',
              style: AppTextStyle.bold35.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            20.verticalSpace,
            Text('Open a Walletly account with a few details.'),
            40.verticalSpace,
            Text('Full Name :', style: AppTextStyle.bold14),
            10.verticalSpace,
            CustomTextFormField(
              textInputType: TextInputType.name,
              hintText: 'Enter Your Name',
            ),
            20.verticalSpace,
            Text('Email  ', style: AppTextStyle.bold14),
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
            20.verticalSpace,
            Text('Confirm Password  ', style: AppTextStyle.bold14),
            10.verticalSpace,
            CustomTextFormField(
              textInputType: TextInputType.text,
              hintText: 'Confirm Your Password',
            ),
            Text.rich(
              TextSpan(
                text: 'Do you have an account ? ',
                style: AppTextStyle.bold14,
                children: [
                  TextSpan(
                    text: 'Sign in Up',
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
