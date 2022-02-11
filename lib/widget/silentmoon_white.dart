import 'package:flutter/material.dart';
import 'package:meditation_app/helper/style/text_style.dart';

class SilentMoonWhite extends StatelessWidget {
  const SilentMoonWhite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Silent",
          style: StringStyle.headText.copyWith(color: Colors.white),
        ),
        Image.asset("assets/logo.png"),
        Text("Moon", style: StringStyle.headText.copyWith(color: Colors.white)),
      ],
    );
  }
}
