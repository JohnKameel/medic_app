import 'package:flutter/material.dart';
import 'package:medic_app/core/theming/app_style.dart';

class TermAndConditionsText extends StatelessWidget {
  const TermAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: AppStyle.font13GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: AppStyle.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and ',
            style: AppStyle.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppStyle.font13DarkBlueMedium.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}
