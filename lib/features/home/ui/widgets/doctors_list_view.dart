import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/core/helpers/spacing.dart';
import 'package:learn/core/theming/styles.dart';
import 'package:learn/features/home/data/models/specializations_response_model.dart';
import 'package:learn/features/home/ui/widgets/doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount: doctorsList?.length, // Example count, replace with actual data length
            itemBuilder: (context, index) {
              return DoctorsListViewItem(
                doctorsModel: doctorsList?[index],
              );
            },
        )
    );
  }
}
