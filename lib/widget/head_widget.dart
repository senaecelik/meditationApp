// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:meditation_app/helper/style/text_style.dart';

class HeadWidget extends StatelessWidget {
  String text;
  HeadWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: StringStyle.headline1,
    );
  }
}