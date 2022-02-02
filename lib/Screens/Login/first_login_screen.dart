import 'package:flutter/material.dart';

import 'first_login_body.dart';

class FirstLoginScreen extends StatelessWidget {
  const FirstLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstLoginBody(),
    );
  }
}
