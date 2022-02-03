import 'package:flutter/material.dart';
import 'package:suivi_apprenant_odk/config/colors.dart';
import 'package:suivi_apprenant_odk/config/config.dart';
import 'package:suivi_apprenant_odk/home.dart';

import 'components/first_login_background.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  late String password = "";
  String _name = "";
  bool notVisiblePass = true;
  bool notVisibleConfirm = true;
  final _keyForm = GlobalKey<FormState>();

  void login() async {
    if (_keyForm.currentState!.validate()) {
      // widget.onSubmit(_name);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home()));
    }
  }

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
              "assets/images/login.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Form(
                key: _keyForm,
                child: Column(
                  children: [
                    customTextField(
                        emailController,
                        "Veillez saisir une adresse email",
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veillez saisir un mot de passe';
                          }
                          if (value.length < 5) {
                            return "Mot de passe trop court (5 caractères minimum)";
                          }
                          return null;
                        },
                        // validator: (val) {
                        //   if (val == null || val.length > 5) {
                        //     return "Mot de passe trop court (5 caracteres minimum)";
                        //   }
                        //   return null;
                        // },
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
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          login();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Palette.mainColor,
                            fixedSize: const Size(240, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        child: const Text(
                          "Se connecter",
                          style: TextStyle(fontSize: 18),
                        ))
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
