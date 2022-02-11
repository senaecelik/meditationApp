import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/helper/style/text_style.dart';
import 'package:meditation_app/pages/login_page.dart';
import 'package:meditation_app/pages/signin_page.dart';
import 'package:meditation_app/helper/constant/color_constant.dart';
import 'package:meditation_app/widget/button_container.dart';
import 'package:meditation_app/widget/head_widget.dart';
import 'package:meditation_app/widget/silentmoon.dart';

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
                  const SilentMoon(),
                  const SizedBox(
                    height: 80,
                  ),
                  Image.asset("assets/Group.png"),
                ],
              ),
            ),
            HeadWidget(text: "We are what we do"),
            const SizedBox(
              height: 15,
            ),
            Text(
                "Thousand of people are usign silent moon\nfor smalls meditation ",
                style: StringStyle.subText),
            const SizedBox(
              height: 62,
            ),
            ButtonContainer(
              text: "Sign In",
              page: const SignIn(),
              color: ColorConstant.kPurple,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ALREADY HAVE AN ACCOUNT?",
                  style: StringStyle.sub1Text,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogIn()),
                    );
                  },
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
