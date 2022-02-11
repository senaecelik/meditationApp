import 'package:flutter/material.dart';
import 'package:meditation_app/helper/style/text_style.dart';

class SilentMoon extends StatelessWidget {
  const SilentMoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Silent",
          style: StringStyle.headText,
        ),
        const SizedBox(
          width: 5,
        ),
        Image.asset("assets/headp.png"),
        const SizedBox(
          width: 5,
        ),
        Text("Moon", style: StringStyle.headText),
      ],
    );
  }
}
