// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:meditation_app/helper/style/text_style.dart';
import 'package:meditation_app/pages/reminders_page.dart';

class MeditationCard extends StatelessWidget {
  String text;
  Color color;
  ImageProvider image;
  MeditationCard(
      {Key? key, required this.text, required this.image, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Reminders()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        height: 167,
        width: 174,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
          image: DecorationImage(image: image),
        ),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              text,
              style: StringStyle.cardText,
            )),
      ),
    );
  }
}
