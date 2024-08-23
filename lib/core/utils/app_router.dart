import 'package:go_router/go_router.dart';
import 'package:tasky/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:tasky/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}
