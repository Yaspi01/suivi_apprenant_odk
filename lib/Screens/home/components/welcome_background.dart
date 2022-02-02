// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../../Login/first_login_body.dart';
import '/config/colors.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget child;
  const WelcomeBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstLoginBody()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Palette.mainColor,
                  fixedSize: const Size(240, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: const Text(
                "Se connecter",
                style: TextStyle(fontSize: 18),
              )),
          child,
        ],
      ),
    );
  }
}
