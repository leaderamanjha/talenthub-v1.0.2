import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 3 seconds (3000 milliseconds) before navigating to the home screen.
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => WelcomeScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace this with your custom image
            Image.asset('assets/images/img_orgaaalogowhite.png',
                width: 200, height: 200),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
