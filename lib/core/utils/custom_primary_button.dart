import 'package:flutter/material.dart';
import 'package:walletly/core/styles/app_text_style.dart';
import 'package:walletly/core/theme/app_colors.dart';
import 'package:walletly/shared/app_spacing.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 0.9;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, 48),
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: AppSpacing.radiusMd),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: AppTextStyle.bold14.copyWith(color: AppColors.whiteColor),
      ),
    );
  }
}
