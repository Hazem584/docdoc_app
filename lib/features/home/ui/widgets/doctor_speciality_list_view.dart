import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn/core/helpers/spacing.dart';
import 'package:learn/core/theming/app_colors.dart';
import 'package:learn/core/theming/styles.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
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
                  "Specialization",
                  style: TextStyles.font12LighterDarkNormal
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
