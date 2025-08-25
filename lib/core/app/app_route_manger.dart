import 'package:go_router/go_router.dart';
import 'package:walletly/core/app/app_name.dart';
import 'package:walletly/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:walletly/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppName.splash,
    routes: [
      GoRoute(
        path: AppName.splash,
        name: AppName.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppName.onBoarding,
        name: AppName.onBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}
