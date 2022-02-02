import 'package:flutter/material.dart';
import 'package:suivi_apprenant_odk/Screens/Login/first_login_body.dart';
import 'package:suivi_apprenant_odk/config/colors.dart';

import 'welcome_background.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bienvenue a ODKs",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/home.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
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
                ))
          ],
        ),
      ),
    );
  }
}
