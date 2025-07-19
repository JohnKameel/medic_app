import 'package:flutter/material.dart';
import 'package:medic_app/core/theming/app_style.dart';

class DoctorSpeicalitySeeAll extends StatelessWidget {
  const DoctorSpeicalitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speicality',
          style: AppStyle.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: AppStyle.font12BlueRegular,
        ),
      ],
    );
  }
}
