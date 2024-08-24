import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasky/core/utils/app_router.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // GoRouter.of(context).pop(AppRouter.kOnBoarding);
      },
      child: const Text.rich(
        TextSpan(
          text: "Didn't have any account? ",
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: "Sign Up here",
              style: TextStyle(
                color: Color(0xff5F33E1),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
