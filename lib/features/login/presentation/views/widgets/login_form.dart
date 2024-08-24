import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasky/core/utils/app_router.dart';
import 'package:tasky/features/login/presentation/views/widgets/pass_field.dart';
import 'package:tasky/features/login/presentation/views/widgets/phone_number_field.dart';
import 'package:tasky/features/login/presentation/views/widgets/signup_text.dart';
import 'package:tasky/features/onboarding/presentation/views/widgets/custom_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _selectedCountryCode = '+20';
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.5),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PhoneNumberField(
              selectedCountryCode: _selectedCountryCode,
              onCountryCodeChanged: (newValue) {
                setState(() {
                  _selectedCountryCode = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            PasswordField(
              isPasswordVisible: _isPasswordVisible,
              onToggleVisibility: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: 400,
              child: CustomButton(
                textButton: 'Sign In',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kLoginView);
                },
              ),
            ),
            const SizedBox(height: 16),
            const SignUpText(),
          ],
        ),
      ),
    );
  }
}
