import 'package:go_router/go_router.dart';
import 'package:walletly/core/app/app_name.dart';
import 'package:walletly/features/auth/presentation/views/sign_in_view.dart';
import 'package:walletly/features/auth/presentation/views/sign_up_view_.dart';
import 'package:walletly/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:walletly/features/on_boarding/presentation/views/welcome_view.dart';
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
      GoRoute(
        path: AppName.welcome,
        name: AppName.welcome,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: AppName.signin,
        name: AppName.signin,
        builder: (context, state) => const SigninView(),
      ),
      GoRoute(
        path: AppName.signup,
        name: AppName.signup,
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
