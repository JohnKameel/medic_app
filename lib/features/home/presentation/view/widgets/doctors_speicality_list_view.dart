import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medic_app/features/home/data/models/specializations_response_model.dart';
import 'package:medic_app/features/home/presentation/view/widgets/doctors_speciality_list_view_item.dart';

class DoctorsSpeicalityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const DoctorsSpeicalityListView({
    super.key,
    required this.specializationDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialityListViewItem(
            specializationsData: specializationDataList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
