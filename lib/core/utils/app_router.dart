import 'package:go_router/go_router.dart';
import 'package:tasky/features/login/presentation/views/login_view.dart';
import 'package:tasky/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:tasky/features/signup/presentation/views/signup_view.dart';
import 'package:tasky/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kOnBoarding = '/onBoarding';
  static const kLoginView = '/loginView';
  static const kSignupView = '/signupView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kSignupView,
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
