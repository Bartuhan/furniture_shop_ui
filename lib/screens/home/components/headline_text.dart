import 'package:flutter/material.dart';
import '../../../constant.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24.0),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Find the \nBest",
              style: TextStyle(fontSize: 42, color: kPrimaryColor),
            ),
            TextSpan(
              text: " Furniture!",
              style: TextStyle(
                fontSize: 42,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
