import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/screens/homepage.dart';
import 'package:project/screens/introduction.dart';
import 'package:project/screens/loginpage.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLoading = true;
        });
        Future.delayed(Duration(seconds: 3), () {
          setState(() {
            isLoading = false;
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            setState(() {});
          });
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(30),
        ),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 5,
                ),
              )
            : Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLoading = true;
        });
        Future.delayed(Duration(seconds: 3), () {
          isLoading = false;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
          setState(() {});
        });
      },
      child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(30),
          ),
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 5,
                ))
              : new Center(
                  child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
    );
  }
}

class SignUpButton extends StatefulWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLoading = true;
        });
        Future.delayed(Duration(seconds: 3), () {
          isLoading = false;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
          setState(() {});
        });
      },
      child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(30),
          ),
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 5,
                ))
              : new Center(
                  child: Text(
                  'Signup',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
    );
  }
}
