import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:meditation_app/helper/constant/color_constant.dart';
import 'package:meditation_app/helper/style/text_style.dart';

class Reminders extends StatefulWidget {
  const Reminders({Key? key}) : super(key: key);
  @override
  State<Reminders> createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 82.21, right: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "What time would you\n like to meditate?",
                  style: StringStyle.hText,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                    "Any time you can choose but We recommend\nfirst thing in th morning.",
                    style: StringStyle.subText),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstant.kLGrey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      //            hourMinute12H(),
                      TimePickerSpinner(
                        spacing: 50,
                        minutesInterval: 15,
                        onTimeChange: (time) {
                          setState(() {
                            _dateTime = time;
                          });
                        },
                      ),
                      //            hourMinuteSecond(),
                      //            hourMinute12HCustomStyle(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text("Which day would you\nlike to meditate?",
                    style: StringStyle.hText),
                const SizedBox(
                  height: 15,
                ),
                Text(
                    "Everyday is best, but we recommend pickingat\nleast five.",
                    style: StringStyle.subText),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 70,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Days(dayname: "Su"),
                    const SizedBox(
                      width: 4,
                    ),
                    Days(dayname: "M"),
                    const SizedBox(
                      width: 4,
                    ),
                    Days(dayname: "T"),
                    const SizedBox(
                      width: 4,
                    ),
                    Days(dayname: "W"),
                    Days(dayname: "TH"),
                    Days(dayname: "F"),
                    Days(dayname: "S"),
                    Days(dayname: "SS"),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 63,
                  width: 374,
                  decoration: BoxDecoration(
                      color: const Color(0xFF8E97FD),
                      borderRadius: BorderRadius.circular(38)),
                  child: const Center(
                    child: Text("SAVE",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context);
                    },
                    child: Text("NO THANKS",
                        style: StringStyle.buttonText
                            .copyWith(color: ColorConstant.kGreyy)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
        ),
      ),
    );
  }
}

class Days extends StatelessWidget {
  String dayname;
  Days({Key? key, required this.dayname}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5),
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(63, 65, 78, 1),
          ),
          child: Center(
            child: Text(dayname, style: const TextStyle(color: Colors.white)),
          ),
        ));
  }
}
