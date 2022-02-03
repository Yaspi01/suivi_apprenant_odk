import 'package:flutter/material.dart';
import 'package:suivi_apprenant_odk/config/colors.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 5)
            ]),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            width: 250,
            height: 250,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/java.png",
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Langage: ",
                        style: TextStyle(
                            fontSize: 25,
                            color: Palette.mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Java",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Text(
                    "Ressourses",
                    style: TextStyle(
                        fontSize: 25,
                        color: Palette.mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "spring.io",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
