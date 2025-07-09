import 'package:flutter/material.dart';
import 'package:medic_app/core/theming/app_style.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: AppStyle.font13DarkBlueRegular,
          ),
          TextSpan(
            text: 'Sign Up',
            style: AppStyle.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
