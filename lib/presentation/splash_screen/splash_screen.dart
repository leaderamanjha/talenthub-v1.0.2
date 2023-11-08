import 'package:flutter/material.dart';
import 'package:talenthub/presentation/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double imageSize = 200.0;
  double imageOpacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Start the animation after a delay
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        imageSize = 250.0; // Increase the size
        imageOpacity = 1.0; // Show the image
      });

      // Add another delay before navigating to the home screen
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ));
      });
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
            // Animated image with opacity animation
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              curve: Curves.easeOut,
              opacity: imageOpacity,
              child: Image.asset('assets/images/img_orgaaalogowhite.png',
                  width: imageSize, height: imageSize),
            ),
          ],
        ),
      ),
    );
  }
}
