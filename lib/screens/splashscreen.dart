import 'package:flutter/material.dart';
import 'package:project/screens/introduction.dart';
import 'package:project/widgets/circularprogressindicator.dart';
import 'package:project/widgets/sizedbox.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 4), () {
      isLoading = false;
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IntroPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splashscreen.png'),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myVerticalSpacer(
                  height: MediaQuery.of(context).size.height * 0.7),
              Loading()
            ],
          ),
        ),
      ),
    );
  }
}
