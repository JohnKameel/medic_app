import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_app/core/helper/spacing.dart';
import 'package:medic_app/core/theming/app_colors.dart';
import 'package:medic_app/core/theming/app_style.dart';

class DoctorsSpeicalityListView extends StatelessWidget {
  const DoctorsSpeicalityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: AppColors.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/speciality_icon.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(8.h),
                Text(
                  'General',
                  style: AppStyle.font12DarkBlueRegular,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
