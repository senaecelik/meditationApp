import 'package:flutter/material.dart';
import 'package:meditation_app/helper/style/text_style.dart';

// ignore: must_be_immutable
class ButtonContainer extends StatelessWidget {
  String text;
  Widget page;
  Color color;
  Color textColor;

  ButtonContainer(
      {Key? key,
      required this.text,
      required this.page,
      required this.color,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 63,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(38),
      ),
      child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Text(text,
              style: StringStyle.buttonText.copyWith(color: textColor))),
    );
  }
}
