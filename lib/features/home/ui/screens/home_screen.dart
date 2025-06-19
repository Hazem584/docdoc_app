import 'package:flutter/material.dart';
import 'package:learn/core/helpers/spacing.dart';
import 'package:learn/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:learn/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:learn/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
              20,
              16,
              20,
              28
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
            ],
          ),
        ),
      ),
    );
  }
}
