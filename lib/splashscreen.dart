import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 16, 13, 64),
        child: Center(child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/044/812/167/small/sophisticated-law-firm-logo-on-transparent-background-png.png",color: Color.fromARGB(255, 255, 255, 255),height: 100,width: 100,)),
      ),
    );
  }
}
