import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FacebookContainer extends StatelessWidget {
  const FacebookContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 63,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: const Color.fromRGBO(117, 131, 202, 1),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 34.0),
            child: Icon(
              Icons.facebook,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(
            width: 45,
          ),
          Text(
            "CONTINUE WITH FACEBOOK",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
