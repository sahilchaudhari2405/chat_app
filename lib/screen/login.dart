import 'package:chatapp/main.dart';
import 'package:flutter/material.dart';

class login_screeen extends StatefulWidget {
  const login_screeen({super.key});

  @override
  State<login_screeen> createState() => _login_screeenState();
}

class _login_screeenState extends State<login_screeen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: mq.height * .15,
              width: mq.width * .5,
              left: mq.width * .25,
              child: Image.asset('images/chat.png'),
            ),
            Positioned(
              bottom: mq.height * .15,
              width: mq.width * .9,
              left: mq.width * .05,
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
