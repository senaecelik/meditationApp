import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/pages/welcome_page.dart';
import 'package:meditation_app/widget/back_arrow.dart';
import 'package:meditation_app/helper/constant/color_constant.dart';
import 'package:meditation_app/widget/facebook_container.dart';
import 'package:meditation_app/widget/google_container.dart';
import 'package:meditation_app/widget/button_container.dart';
import 'package:meditation_app/widget/head_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.black.withOpacity(0.5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login.png"), fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const BackArrow(),
                  const SizedBox(
                    height: 29,
                  ),
                  HeadWidget(
                    text: "Create your account",
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const FacebookContainer(),
                  const SizedBox(
                    height: 20,
                  ),
                  const GoogleContainer(),
                ],
              ),
            ),
            Text(
              "OR LOG IN WITH EMAIL",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  letterSpacing: 2,
                  color: ColorConstant.kGrey),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstant.kLightGrey),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.done_rounded, color: Colors.green),
                      hintText: "Username",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstant.kLightGrey),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.done_rounded, color: Colors.green),
                      hintText: "Email address",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstant.kLightGrey),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(EvaIcons.eyeOff2, color: Colors.black),
                      hintText: "Password",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "I have read the Privace Policy",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: ColorConstant.kGrey),
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ButtonContainer(
              text: "GET STARTED",
              page: const WelcomePage(),
              color: ColorConstant.kPurple,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
