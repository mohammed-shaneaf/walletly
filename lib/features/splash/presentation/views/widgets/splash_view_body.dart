import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:walletly/core/app/app_name.dart';
import 'package:walletly/core/styles/app_text_style.dart';
import 'package:walletly/core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
   
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
     context.goNamed(AppName.onBoarding);
    });
  }
  @override
  Widget build(BuildContext context) {
    // 12% of the shortest side → responsive logo size
    final logoSize = MediaQuery.sizeOf(context).shortestSide * 0.12;

    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min, // keep the row as small as its contents
        children: [
          SvgPicture.asset(
            Assets.assetsImagesSplashIcon,
            width: logoSize,
            height: logoSize,
            semanticsLabel: 'Walletly logo',
          ),
          const SizedBox(width: 12),
          Text('Walletly', style: AppTextStyle.bold40),
        ],
      ),
    );
  }
}
