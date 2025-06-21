import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn/core/helpers/spacing.dart';
import 'package:learn/core/theming/app_colors.dart';
import 'package:learn/core/theming/styles.dart';
import 'package:learn/features/home/data/models/specializations_response_model.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int index;
  const DoctorsSpecialityListViewItem({super.key, this.specializationsData, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorsManger.lighterDarkGray,
            child: SvgPicture.asset(
              "assets/svgs/general_doctor.svg",
              width: 40.w,
              height: 40.h,
            ),
          ),
          verticalSpace(8),
          Text(
              specializationsData?.name ?? "Specialization",
              style: TextStyles.font12LighterDarkNormal
          ),
        ],
      ),
    );
  }
}
