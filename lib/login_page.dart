import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Text(
                      "Welcome Back!",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: const Color.fromRGBO(63, 65, 78, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    Container(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 374,
                      height: 63,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38),
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.5))),
                      child: Row(
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(left: 34.0),
                              child: Icon(
                                EvaIcons.googleOutline,
                                size: 40,
                              )),
                          const SizedBox(
                            width: 45,
                          ),
                          Text(
                            "CONTINUE WITH GOOGLE",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                    color: Color.fromRGBO(242, 243, 247, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email address",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            letterSpacing: 2,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 374,
                height: 63,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 243, 247, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            letterSpacing: 2,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LogIn()),
                      );*/
                    },
                    child: Text(
                      "LOG IN",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Forgot Password?",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(63, 65, 78, 1),
                ),
              ),
              SizedBox(
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
                    onPressed: () {},
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(142, 151, 253, 1)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
