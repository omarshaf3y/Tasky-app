import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasky/core/utils/app_router.dart';

import 'package:tasky/features/login/presentation/views/widgets/pass_field.dart';
import 'package:tasky/features/login/presentation/views/widgets/phone_number_field.dart';
import 'package:tasky/features/onboarding/presentation/views/widgets/custom_button.dart';
import 'package:tasky/features/signup/presentation/views/widgets/already_have_account.dart';
import 'package:tasky/features/signup/presentation/views/widgets/experience_level.dart';
import 'package:tasky/features/signup/presentation/views/widgets/text_field_section.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    String selectedCountryCode = '+20';
    return Column(
      children: [
        // const SizedBox(height: 24),
        Image.asset(
          'assets/img/Frame 4.png',
          width: double.infinity,
          height: 300,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xff24252C),
                ),
              ),
              const SizedBox(height: 24),
              const TextFieldSection(label: 'Name...'),
              const SizedBox(height: 15),
              PhoneNumberField(
                selectedCountryCode: selectedCountryCode,
                onCountryCodeChanged: (newValue) {
                  setState(() {
                    selectedCountryCode = newValue;
                  });
                },
              ),
              const SizedBox(height: 15),
              const TextFieldSection(label: 'Years of experience...'),
              const SizedBox(height: 15),
              const ExperienceLevel(),
              const SizedBox(height: 15),
              const TextFieldSection(label: 'Address...'),
              const SizedBox(height: 15),
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
                width: 362,
                child: CustomButton(
                  textButton: 'Sign up',
                  onPressed: () {
                    GoRouter.of(context).pop(AppRouter.kLoginView);
                  },
                ),
              ),
              const AlreadyHaveAccount(),
            ],
          ),
        ),
      ],
    );
  }
}
