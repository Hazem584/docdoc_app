import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn/core/theming/app_colors.dart';
import 'package:learn/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Hazem!", style: TextStyles.font18DarkBlueBold),
            Text("How Are you Today?",style: TextStyles.font12LighterDarkNormal,)
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManger.lighterDarkGray,
          child: SvgPicture.asset("assets/svgs/notification.svg",width: 24,height: 24,),
        ),
      ],
    );
  }
}
