import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/pages/login_page.dart';
import 'package:meditation_app/pages/signin_page.dart';
import 'package:meditation_app/widget/purpleContainer.dart';
import 'package:meditation_app/widget/textStyle.dart';

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
                        style: StringStyle.instance.headText,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/headp.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Moon", style: StringStyle.instance.headText),
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
              style: StringStyle.instance.hText,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
                "Thousand of people are usign silent moon\nfor smalls meditation ",
                style: StringStyle.instance.subText),
            const SizedBox(
              height: 62,
            ),
            PurpleContainer(text: "Sign In", page: const SignIn()),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ALREADY HAVE AN ACCOUNT?",
                  style: StringStyle.instance.sub1Text,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogIn()),
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
