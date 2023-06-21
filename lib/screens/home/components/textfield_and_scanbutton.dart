import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class TextFieldAndScanButton extends StatelessWidget {
  const TextFieldAndScanButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 8,
            ),
            decoration: const BoxDecoration(
                color: kLightColor,
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: const TextField(
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 34, color: kPrimaryColor),
                hintText: "Search Furniture",
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(width: myWidth(context) * 0.04),
        GestureDetector(
          onTap: () => print("Scan Button"),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: SvgPicture.asset(
              "assets/icons/scan.svg",
              height: 30,
              color: kLightColor,
            ),
          ),
        ),
      ],
    );
  }
}
