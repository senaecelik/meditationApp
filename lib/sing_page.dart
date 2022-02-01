import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: const [
            SizedBox(
              height: 50,
            ),
            Text("widget is everthing"),
          ],
        ),
      ),
    );
  }
}
