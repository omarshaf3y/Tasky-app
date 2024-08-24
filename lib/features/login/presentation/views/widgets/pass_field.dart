import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final bool isPasswordVisible;
  final VoidCallback onToggleVisibility;

  const PasswordField({
    super.key,
    required this.isPasswordVisible,
    required this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
        hintText: 'Password...',
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xffBABABA),
          ),
          onPressed: onToggleVisibility,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
