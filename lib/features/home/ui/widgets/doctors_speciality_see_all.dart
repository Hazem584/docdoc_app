import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctors Speciality",
          style: Te
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "See All",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Colors.blue,
                ),
          ),
        ),
      ],
    );
  }
}
