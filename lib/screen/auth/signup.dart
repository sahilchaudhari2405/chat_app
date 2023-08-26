import 'package:chatapp/main.dart';
import 'package:flutter/material.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  bool _isAnimated = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isAnimated = true;
      });
    });
  }

  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: mq.height * .15,
              width: mq.width * .5,
              right: _isAnimated ? mq.width * .25 : -mq.width * .5,
              child: Image.asset('images/chat.png'),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 2),
              bottom: _isAnimated ? mq.height * .15 : -mq.height * .5,
              width: mq.width * .9,
              right: mq.width * .05,
              height: mq.height * .07,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 1,
                    backgroundColor: Color.fromARGB(255, 96, 150, 236),
                    shadowColor: Color.fromARGB(255, 36, 36, 37)),
                onPressed: () {},
                icon: Image.asset(
                  'images/google.png',
                  height: mq.height * .06,
                ),
                label: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 19),
                    children: [
                      TextSpan(text: 'Sign In With'),
                      TextSpan(
                        text: ' Google',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
