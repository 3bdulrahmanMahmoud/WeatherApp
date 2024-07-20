import 'package:ab/features/Onboarding/onboarding_view.dart';
import 'package:ab/features/Splash/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(path: '/OnboardingView',builder: (context, state) => OnboardingView(),),

]);
