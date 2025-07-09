import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medic_app/core/routing/router_app.dart';
import 'package:medic_app/core/theming/app_colors.dart';
import 'package:medic_app/core/theming/app_style.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.push(RouterApp.login);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: AppStyle.font16WhiteMedium,
      ),
    );
  }
}
