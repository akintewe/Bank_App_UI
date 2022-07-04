import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/widgets/button.dart';
import 'package:project/widgets/sizedbox.dart';
import 'package:project/widgets/textfield_for_login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/whitebackground.jpeg'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myVerticalSpacer(
                    height: MediaQuery.of(context).size.height * 0.2),
                Text(
                  'Create your Account',
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            myVerticalSpacer(height: MediaQuery.of(context).size.height * 0.1),
            TextField1(),
            Textfield2(),
            Textfield3(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SignUpButton()],
            )
          ],
        ),
      ),
    );
  }
}
