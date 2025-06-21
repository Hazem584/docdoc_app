import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/core/helpers/spacing.dart';
import 'package:learn/core/theming/styles.dart';
import 'package:learn/features/home/data/models/specializations_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h) ,
      // decoration:BoxDecoration(
      //   borderRadius: BorderRadius.circular(16),
      // ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     doctorsModel?.name ?? "Dr. John Doe",
                      style: TextStyles.font13GrayRegular
                  ),
                  verticalSpace(5),
                  Text(
                      "${doctorsModel?.degree ?? "Degree"} | ${doctorsModel?.phone ?? "011111111111"}",
                      style: TextStyles.font13GrayRegular
                  ),
                  verticalSpace(5),
                  Text(
                      doctorsModel?.email ?? "Email@gmail.com",
                      style: TextStyles.font13GrayRegular
                  ),
                ],
              )
          )
        ],
      ) ,
    );
  }
}
