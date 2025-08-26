import 'package:walletly/core/utils/app_images.dart';
import 'package:walletly/features/on_boarding/domain/on_boarding_slide.dart';

List<OnBoardingSlide> kOnboardingSlides = [
  OnBoardingSlide(
    asset: Assets.assetsImagesOnBoardingOne,
    title: 'Save money',
    description:
        'We help you meet your savings target monthly and our emergency plans enable you save for multiple purposes.',
  ),
  OnBoardingSlide(
    asset: Assets.assetsImagesOnBoardingTwo,
    title: 'Withdraw your money',
    description:
        'With just your phone number, you can withdraw your funds at any point in time from any BankMe agent close to you.',
  ),
  OnBoardingSlide(
    asset: Assets.assetsImagesOnBoardingThree,
    title: 'Invest your money',
    description:
        'Get access to risk free investments that will multiply your income and pay high returns in few months',
  ),
];
