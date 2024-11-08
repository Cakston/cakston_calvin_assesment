import 'package:cakston_calvin_assesment/constant/common.dart';
import 'package:cakston_calvin_assesment/screens/Home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final List<String> _imageList = ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png"];
  int _clickIndex = 0;

  void _previousImage() {
    setState(() {
      if (_clickIndex > 0) _clickIndex--;
    });
  }

  void _nextImage() {
    setState(() {
      if (_clickIndex < _imageList.length - 1) {
        _clickIndex++;
      }
    });
  }
  void _navHome() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.apply(
      displayColor: Theme.of(context).colorScheme.onSurface,
    );
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isFinal = _clickIndex == _imageList.length - 1;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            focalRadius: 0.2,
            radius: 0.4,
            colors: [Colors.white70, Colors.lightBlue.shade800],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: textAbove[_clickIndex],
                ),
                SizedBox(
                  height: screenHeight / 2,
                  child: Image.asset("assets/splash/${_imageList[_clickIndex]}"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: isFinal
                    ? _buildButton(
                  text: "Zaczynamy!",
                  textColor: Colors.white,
                  backgroundColor: Colors.blue.shade800,
                  onPressed: _navHome,
                  textTheme: textTheme,
                  width: 200,
                )
                    : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButton(
                      text: "Pomiń",
                      textColor: Colors.grey.shade400,
                      onPressed: _previousImage,
                      textTheme: textTheme,
                      width: 120,
                    ),
                    _buildButton(
                      text: "Dalej",
                      textColor: Colors.white,
                      backgroundColor: Colors.blue.shade800,
                      onPressed: _nextImage,
                      textTheme: textTheme,
                      width: 120,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required Color textColor,
    Color? backgroundColor,
    required VoidCallback onPressed,
    required TextTheme textTheme,
    required double width,
  }) {
    return MaterialButton(
      shape: StadiumBorder(
        side: backgroundColor != null ? BorderSide(color: Colors.white) : BorderSide.none,
      ),
      color: backgroundColor,
      onPressed: onPressed,
      child: SizedBox(
        height: 60,
        width: width,
        child: Center(
          child: Text(
            text,
            style: textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
