import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/core/helpers/spacing.dart';
import 'package:learn/core/theming/styles.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                  image: AssetImage(
                      "assets/images/home_blue_pattern.png",
                  ),
                fit: BoxFit.cover
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Book and\n schedule with\n nearest doctor",
                  style: TextStyles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r),
                        ),
                      ),
                      child:Text("Find Nearby",
                        style: TextStyles.font13BlueRegular,
                      ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 16,
            child: Image.asset(
              "assets/images/home_doctors.png",
              height: 210.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
