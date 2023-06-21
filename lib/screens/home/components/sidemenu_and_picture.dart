import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class SideMenuAndPicture extends StatelessWidget {
  const SideMenuAndPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => print("Side Menu"),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: kLightColor,
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
            child: SvgPicture.asset(
              "assets/icons/menu.svg",
              height: 18,
              color: kPrimaryColor,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => print("Profile"),
          child: Container(
            width: myHeight(context) * 0.05,
            height: myHeight(context) * 0.05,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14)),
              image: DecorationImage(
                image: AssetImage("assets/images/Profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
