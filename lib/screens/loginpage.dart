import 'package:flutter/material.dart';
import 'package:project/screens/signuppage.dart';
import 'package:project/widgets/button.dart';
import 'package:project/widgets/sizedbox.dart';
import 'package:project/widgets/textfield_for_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/whitebackground.jpeg'),
                    fit: BoxFit.fill)),
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                children: [
                  myVerticalSpacer(
                      height: MediaQuery.of(context).size.height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text(
                            'AROVA BANK',
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          myVerticalSpacer(height: 0.002),
                          Text('Creating a new future...'),
                        ],
                      ),
                    ],
                  ),
                  myVerticalSpacer(
                      height: MediaQuery.of(context).size.height * 0.2),
                  const TextField1(),
                  const Textfield2(),
                  myVerticalSpacer(
                      height: MediaQuery.of(context).size.height * 0.009),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyHorizontalSpacer(
                          width: MediaQuery.of(context).size.width * 0.6),
                      Text(
                        'Forgot password ?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  myVerticalSpacer(
                      height: MediaQuery.of(context).size.height * 0.009),
                  LoginButton(),
                  myVerticalSpacer(
                      height: MediaQuery.of(context).size.height * 0.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SignUp())));
                          },
                          child: Text(
                            'Dont have an Account? Create account',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
