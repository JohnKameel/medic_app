import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medic_app/core/routing/router_app.dart';
import 'package:medic_app/core/theming/app_style.dart';


class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: AppStyle.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: AppStyle.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(RouterApp.login);
              },
          ),
        ],
      ),
    );
  }
}