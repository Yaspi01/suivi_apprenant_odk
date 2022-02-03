import 'package:flutter/material.dart';

import 'details_brief.dart';

class Brief extends StatefulWidget {
  const Brief({Key? key}) : super(key: key);

  @override
  _BriefState createState() => _BriefState();
}

class _BriefState extends State<Brief> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text("Brief")),
        body: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5)
          ]),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 1,
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsBrief())),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(40),
                            color: Colors.white),
                        width: 150,
                        height: 150,
                        child: Center(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Image.asset(
                                "assets/images/java.png",
                                height: 60,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Center(
                                  child: Text(
                                    "Gestion des apprenantsssssssss",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))),
                  )
                ],
              ),
            );
          }),
    ));
  }
}
