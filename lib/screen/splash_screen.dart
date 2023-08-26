import 'package:chatapp/main.dart';
import 'package:chatapp/screen/home.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  bool _isAnimated = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const mainpage()));
      });
    });
  }

  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: mq.height * .15,
              width: mq.width * .5,
              right: mq.width * .25,
              child: Image.asset('images/chat.png'),
            ),
            Positioned(
              bottom: mq.height * .15,
              width: mq.width,
              child: Text(
                "Chat App ⚡",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, color: Colors.black87, letterSpacing: .5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
