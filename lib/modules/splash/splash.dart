import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<Splash> {

  Future<void> redirect(BuildContext context) async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacementNamed("/lista");
  }

  @override
  Widget build(BuildContext context) {
    redirect(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
