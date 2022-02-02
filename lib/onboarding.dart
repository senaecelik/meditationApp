import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/pages/login_page.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 504,
              width: 423,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Frame.png"),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Silent",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            letterSpacing: 3),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/head.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Moon",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            letterSpacing: 3),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Image.asset("assets/Group.png"),
                ],
              ),
            ),
            Text(
              "We are what we do",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: const Color.fromRGBO(63, 65, 78, 1),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Thousand of people are usign silent moon\nfor smalls meditation ",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: const Color.fromRGBO(161, 164, 178, 1),
              ),
            ),
            const SizedBox(
              height: 62,
            ),
            Container(
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
                      MaterialPageRoute(builder: (context) => const LogIn()),
                    );
                  },
                  child: Text(
                    "SIGN UP",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ALREADY HAVE AN ACCOUNT?",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(142, 151, 253, 1)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "LOG IN",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(142, 151, 253, 1)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
