import 'package:flutter/material.dart';

import '../../../size_config.dart';

class BigText extends StatelessWidget {
  const BigText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: myWidth(context) > 410 ? 42 : 36,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
