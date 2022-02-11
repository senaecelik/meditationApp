import 'package:flutter/material.dart';
import 'package:meditation_app/helper/constant/color_constant.dart';
import 'package:meditation_app/helper/style/text_style.dart';
import 'package:meditation_app/widget/meditation_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 77,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What Brings you",
                      style: StringStyle.headline1,
                    ),
                    Text(
                      "to Silent Moon?",
                      style: StringStyle.headline2,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text("choose a topic to focuse on:",
                        style: StringStyle.headline3.copyWith(
                          color: ColorConstant.kGrey,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 700,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    MeditationCard(
                      text: "Reduce Stress",
                      color: ColorConstant.kLighPurple,
                      image: const AssetImage("assets/1.png"),
                    ),
                    MeditationCard(
                        text: "Improve Performance",
                        image: const AssetImage("assets/2.png"),
                        color: Colors.orangeAccent),
                    MeditationCard(
                        text: "Increase Happiness",
                        image: const AssetImage("assets/3.png"),
                        color: Colors.deepOrangeAccent),
                    MeditationCard(
                        text: "Reduce Anxiety",
                        image: const AssetImage("assets/4.png"),
                        color: Colors.blueGrey),
                    MeditationCard(
                      text: "Reduce Stress",
                      color: ColorConstant.kLighPurple,
                      image: const AssetImage("assets/1.png"),
                    ),
                    MeditationCard(
                        text: "Improve Performance",
                        image: const AssetImage("assets/2.png"),
                        color: Colors.orangeAccent),
                    MeditationCard(
                        text: "Increase Happiness",
                        image: const AssetImage("assets/3.png"),
                        color: Colors.deepOrangeAccent),
                    MeditationCard(
                        text: "Reduce Anxiety",
                        image: const AssetImage("assets/4.png"),
                        color: Colors.blueGrey),
                    MeditationCard(
                      text: "Reduce Stress",
                      color: ColorConstant.kLighPurple,
                      image: const AssetImage("assets/1.png"),
                    ),
                    MeditationCard(
                        text: "Improve Performance",
                        image: const AssetImage("assets/2.png"),
                        color: Colors.orangeAccent),
                    MeditationCard(
                        text: "Increase Happiness",
                        image: const AssetImage("assets/3.png"),
                        color: Colors.deepOrangeAccent),
                    MeditationCard(
                        text: "Reduce Anxiety",
                        image: const AssetImage("assets/4.png"),
                        color: Colors.blueGrey),
                    MeditationCard(
                      text: "Reduce Stress",
                      color: ColorConstant.kLighPurple,
                      image: const AssetImage("assets/1.png"),
                    ),
                    MeditationCard(
                        text: "Improve Performance",
                        image: const AssetImage("assets/2.png"),
                        color: Colors.orangeAccent),
                    MeditationCard(
                        text: "Increase Happiness",
                        image: const AssetImage("assets/3.png"),
                        color: Colors.deepOrangeAccent),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
