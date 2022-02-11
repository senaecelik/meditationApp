import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/helper/style/text_style.dart';
import 'package:meditation_app/pages/signin_page.dart';
import 'package:meditation_app/pages/welcome_page.dart';
import 'package:meditation_app/helper/constant/color_constant.dart';
import 'package:meditation_app/widget/back_arrow.dart';
import 'package:meditation_app/widget/facebook_container.dart';
import 'package:meditation_app/widget/google_container.dart';
import 'package:meditation_app/widget/button_container.dart';
import 'package:meditation_app/widget/head_widget.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      height: 27,
                    ),
                    HeadWidget(text: "Welcome Back"),
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
                    color: const Color.fromRGBO(161, 164, 178, 1)),
              ),
              const SizedBox(
                height: 40,
              ),
              _buildEmail(),
              const SizedBox(
                height: 20,
              ),
              _buildPassword(),
              const SizedBox(
                height: 30,
              ),
              ButtonContainer(
                text: "Log In",
                page: const WelcomePage(),
                color: ColorConstant.kPurple,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              _buildForgetPassword(),
              const SizedBox(
                height: 104,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: ColorConstant.kPurple),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }

  Text _buildForgetPassword() {
    return Text("Forgot Password?",
        style: StringStyle.sub1Text.copyWith(color: ColorConstant.kGreyy));
  }

  Container _buildPassword() {
    return Container(
      width: 374,
      height: 63,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(242, 243, 247, 1),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Password",
              border: InputBorder.none,
              hintStyle: GoogleFonts.roboto(
                  letterSpacing: 2, fontWeight: FontWeight.w400, fontSize: 16)),
        ),
      ),
    );
  }

  Container _buildEmail() {
    return Container(
      width: 374,
      height: 63,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(242, 243, 247, 1),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Email address",
              border: InputBorder.none,
              hintStyle: GoogleFonts.roboto(
                  letterSpacing: 2, fontWeight: FontWeight.w400, fontSize: 16)),
        ),
      ),
    );
  }
}
