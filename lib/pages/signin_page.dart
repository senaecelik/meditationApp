import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/pages/welcome_page.dart';
import 'package:meditation_app/widget/facebookContainer.dart';
import 'package:meditation_app/widget/googleContainer.dart';
import 'package:meditation_app/widget/purpleContainer.dart';

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
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login.png"), fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.5)),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Text(
                    "Create your account",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: Color.fromRGBO(63, 65, 78, 1)),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  FacebookContainer(),
                  SizedBox(
                    height: 20,
                  ),
                  GoogleContainer(),
                ],
              ),
            ),
            Text(
              "OR LOG IN WITH EMAIL",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  letterSpacing: 2,
                  color: Color.fromRGBO(161, 164, 178, 1)),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(242, 243, 247, 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.done_rounded, color: Colors.green),
                      hintText: "Username",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(242, 243, 247, 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.done_rounded, color: Colors.green),
                      hintText: "Email address",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(242, 243, 247, 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(EvaIcons.eyeOff2, color: Colors.black),
                      hintText: "Password",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            SizedBox(
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
                        color: Color.fromRGBO(161, 164, 178, 1)),
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
            SizedBox(
              height: 32,
            ),
            PurpleContainer(text: "GET STARTED", page: WelcomePage()),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
