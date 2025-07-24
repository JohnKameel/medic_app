import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic_app/core/helper/spacing.dart';
import 'package:medic_app/core/theming/app_colors.dart';
import 'package:medic_app/core/theming/app_style.dart';
import 'package:medic_app/features/home/data/models/specializations_response_model.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorsSpecialityListViewItem({
    super.key,
    this.specializationsData,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
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
            specializationsData?.name ?? 'Specialization',
            style: AppStyle.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
