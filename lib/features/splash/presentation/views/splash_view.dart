import 'package:flutter/material.dart';
import 'package:tasky/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff5F33E1),
      body: SplashViewBody(),
    );
  }
}
