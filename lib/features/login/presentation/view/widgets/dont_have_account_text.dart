import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medic_app/core/theming/app_style.dart';

import '../../../../../core/routing/router_app.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: AppStyle.font13DarkBlueRegular,
          ),
          TextSpan(
            text: 'Sign Up',
            style: AppStyle.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(RouterApp.signup);
              },
          ),
        ],
      ),
    );
  }
}
