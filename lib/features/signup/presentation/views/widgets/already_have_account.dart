import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasky/core/utils/app_router.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          GoRouter.of(context).pop(AppRouter.kLoginView);
        },
        child: const Text.rich(
          TextSpan(
            text: "Already have any account? ",
            style: TextStyle(color: Color(0xff7F7F7F)),
            children: [
              TextSpan(
                text: "Sign In",
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
      ),
    );
  }
}
