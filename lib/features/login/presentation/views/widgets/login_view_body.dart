import 'package:flutter/material.dart';
import 'package:tasky/features/login/presentation/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Image.asset(
          'assets/img/Frame 4.png',
          width: double.infinity,
          height: 482,
          fit: BoxFit.fitWidth,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.5),
          child: SizedBox(
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color(0xff24252C),
              ),
            ),
          ),
        ),
        const LoginForm(),
      ],
    );
  }
}
