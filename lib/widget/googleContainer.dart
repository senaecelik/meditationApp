import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleContainer extends StatelessWidget {
  const GoogleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 63,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(38),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 34.0),
            child: Icon(
              EvaIcons.googleOutline,
              size: 35,
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Text(
            "CONTINUE WITH GOOGLE",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),
          )
        ],
      ),
    );
  }
}
