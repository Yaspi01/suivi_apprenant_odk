import 'package:flutter/material.dart';
import '/config/colors.dart';
import '/config/config.dart';

import 'components/first_login_background.dart';
import 'login_body.dart';

class FirstLoginBody extends StatefulWidget {
  const FirstLoginBody({Key? key}) : super(key: key);

  @override
  State<FirstLoginBody> createState() => _FirstLoginBodyState();
}

class _FirstLoginBodyState extends State<FirstLoginBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  late String password = "";
  late String passwordConfirm = "";
  bool notVisiblePass = true;
  bool notVisibleConfirm = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FirstLoginBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/login_first.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Form(
                child: Column(
                  children: [
                    customTextField(
                        emailController,
                        "Veillez saisir un login",
                        TextInputType.emailAddress,
                        const Icon(
                          Icons.person,
                          color: Palette.mainColor,
                        ),
                        "Email"),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      height: 60,
                      child: TextFormField(
                        controller: passwordController,
                        onChanged: (val) => password,
                        validator: (val) {
                          if (val == null || val.length > 5) {
                            return "Mot de passe trop court (5 caracteres minimum)";
                          }
                        },
                        obscureText: notVisiblePass,
                        style: const TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(top: 14),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Palette.mainColor,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(notVisiblePass == true
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              color: Palette.mainColor,
                              onPressed: () {
                                setState(() {
                                  notVisiblePass = !notVisiblePass;
                                });
                              },
                            ),
                            hintText: "Mot de passe",
                            hintStyle: const TextStyle(color: Colors.black38)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      height: 60,
                      child: TextFormField(
                        controller: passwordConfirmController,
                        onChanged: (val) => password,
                        validator: (val) => passwordController.text !=
                                passwordConfirmController.text
                            ? "Les deux mots passes ne concordent pas !"
                            : null,
                        obscureText: notVisibleConfirm,
                        style: const TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(top: 14),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Palette.mainColor,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(notVisibleConfirm == true
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              color: Palette.mainColor,
                              onPressed: () {
                                setState(() {
                                  notVisibleConfirm = !notVisibleConfirm;
                                });
                              },
                            ),
                            hintText: "Mot de passe de confirmation",
                            hintStyle: const TextStyle(color: Colors.black38)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginBody()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Palette.mainColor,
                            fixedSize: const Size(240, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        child: const Text(
                          "Valider",
                          style: TextStyle(fontSize: 18),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
