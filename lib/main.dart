import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:uts_mobile/layouts/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate an API call delay (you can replace this with your actual API call)
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Your custom icon
            Icon(
              Icons.ac_unit, // Replace with your custom icon
              size: 100.0,
              color: Colors.blue, // Change icon color as needed
            ),
            SizedBox(height: 20),
            // Progress indicator (using flutter_spinkit)
            SpinKitFadingCube(
              color: Colors.blue, // Change the loading indicator color
              size: 50.0, // Adjust the size as needed
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Start with SplashScreen
    );
  }
}
