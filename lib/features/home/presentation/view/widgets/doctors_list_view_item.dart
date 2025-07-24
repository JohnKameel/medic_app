import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:medic_app/core/helper/spacing.dart';
import 'package:medic_app/core/theming/app_colors.dart';
import 'package:medic_app/core/theming/app_style.dart';
import 'package:medic_app/features/home/data/models/specializations_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({
    super.key,
    this.doctorsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: AppColors.lightGray,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'John',
                  style: AppStyle.font18DarkBlueBold,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: AppStyle.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'test@gmail.com',
                  style: AppStyle.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
