import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasky/core/utils/app_router.dart';

import 'custom_button.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 24),
          Image.asset(
            'assets/img/Frame 4.png',
            width: double.infinity,
            height: 482,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 24),
          const Text(
            'Task Management &\n To-Do List',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'This productive tool is designed to help\nyou better manage your task \nproject-wise conveniently!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff6E6A7C),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 32.5),
          CustomButton(
            textButton: "Let's Start",
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kLoginView);
            },
          ),
        ],
      ),
    );
  }
}
