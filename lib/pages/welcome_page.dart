import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/widget/textStyle.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/welcome.png"), fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Silent"),
                  Image.asset("assets/logo.png"),
                  Text("Moon"),
                ],
              ),
              SizedBox(
                height: 75,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Hi Afsar, Welcome\n',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    TextSpan(
                        text: '    to Silent Moon',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 30)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 7,
                child: Text(
                    "Explore the app, Find some peace of mind to prepare for meditation.",
                    style: StringStyle.instance.subText.copyWith(color: Colors.white),
                        ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 63,
                  width: 374,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(38)),
                  child: TextButton(
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.roboto(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
