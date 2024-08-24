import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
          Text(
            textButton,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 8),
          Image.asset('assets/img/Arrow - Left.png'),
        ],
      ),
    );
  }
}
