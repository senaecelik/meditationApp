import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/helper/style/text_style.dart';
import 'package:meditation_app/widget/button_container.dart';
import 'package:meditation_app/widget/silentmoon_white.dart';
import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/welcome.png"), fit: BoxFit.cover)),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const SilentMoonWhite(),
                const SizedBox(
                  height: 75,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Hi Afsar, Welcome\n',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      const TextSpan(
                          text: '    to Silent Moon',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 30)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 8,
                  child: Text(
                    "Explore the app, Find some peace of mind\n to prepare for meditation.",
                    style: StringStyle.subText.copyWith(color: Colors.white),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: ButtonContainer(
                      text: "GET STARTED",
                      page: const HomePage(),
                      color: Colors.white,
                      textColor: Colors.black,
                    )),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          )),
    ));
  }
}
