import 'package:flutter/material.dart';
import 'package:meditation_app/widget/textStyle.dart';

class PurpleContainer extends StatelessWidget {
  String text;
  Widget page;
  PurpleContainer({Key? key, required this.text, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 63,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 151, 253, 1),
        borderRadius: BorderRadius.circular(38),
      ),
      child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Text(text, style: StringStyle.instance.buttonText)),
    );
  }
}
