import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextField1 extends StatefulWidget {
  const TextField1({Key? key}) : super(key: key);

  @override
  State<TextField1> createState() => _TextField1State();
}

class _TextField1State extends State<TextField1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
          decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: Colors.white,
              filled: true)),
    );
  }
}

class Textfield2 extends StatefulWidget {
  const Textfield2({Key? key}) : super(key: key);

  @override
  State<Textfield2> createState() => _Textfield2State();
}

class _Textfield2State extends State<Textfield2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: Colors.white,
              filled: true)),
    );
  }
}

class Textfield3 extends StatefulWidget {
  const Textfield3({Key? key}) : super(key: key);

  @override
  State<Textfield3> createState() => _Textfield3State();
}

class _Textfield3State extends State<Textfield3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Confirm Password',
              hintStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: Colors.white,
              filled: true)),
    );
  }
}
