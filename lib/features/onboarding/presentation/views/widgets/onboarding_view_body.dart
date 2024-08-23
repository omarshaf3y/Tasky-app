import 'package:flutter/material.dart';

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
          ElevatedButton(
            onPressed: () {
              // Add your onPressed action here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff5F33E1),
              fixedSize: const Size(331, 60),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Let's Start",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 8),
                Image.asset('assets/img/Arrow - Left.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
