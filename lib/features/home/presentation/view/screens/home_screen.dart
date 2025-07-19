import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medic_app/core/helper/spacing.dart';
import 'package:medic_app/features/home/presentation/view/widgets/doctor_speicality_see_all.dart';
import 'package:medic_app/features/home/presentation/view/widgets/home_doctors_blue_container.dart';
import 'package:medic_app/features/home/presentation/view/widgets/home_top_bar.dart';
import '../widgets/specializations_and_doctors_bloc_builder.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorSpeicalitySeeAll(),
              verticalSpace(16.h),
              const SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
