import 'package:flutter/material.dart';
import 'package:suivi_apprenant_odk/config/colors.dart';
import 'package:suivi_apprenant_odk/partials/drawer.dart';

import '../../home.dart';
import 'brief.dart';
import 'dashboard.dart';

class DetailsBrief extends StatefulWidget {
  const DetailsBrief({Key? key}) : super(key: key);

  @override
  _DetailsBriefState createState() => _DetailsBriefState();
}

class _DetailsBriefState extends State<DetailsBrief> {
  Widget currentScreen = const DetailsBrief();
  final PageStorageBucket bucket = PageStorageBucket();
  late TabController _tabController;
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Brief"),
        ),
        drawer: const NavBar(),
        body: Column(
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Projet",
                          style:
                              TextStyle(color: Palette.mainColor, fontSize: 20),
                        ),
                        Text(
                          "Gestion des Apprenants",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Formateur",
                            style: TextStyle(
                                color: Palette.mainColor, fontSize: 20)),
                        Text("Formateur", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Date",
                            style: TextStyle(
                                color: Palette.mainColor, fontSize: 20)),
                        Text("03/02/2022", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Center(
                      child: Text("Context du projet",
                          style: TextStyle(fontSize: 20))),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home())),
          child: const Icon(
            Icons.home,
            color: Palette.mainColor,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            color: Palette.mainColor,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 25,
                      onPressed: () => setState(
                        () {
                          currentScreen = const Dashboard();
                          currentTab = 0;
                        },
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTab == 0
                                ? Color(0xff0d1610)
                                : Colors.white,
                          ),
                          Text(
                            "Rendu",
                            style: TextStyle(
                                color: currentTab == 0
                                    ? Color(0xff0d1610)
                                    : Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 25,
                      onPressed: () => setState(
                        () {
                          currentScreen = const Brief();
                          currentTab = 0;
                        },
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color:
                                currentTab == 0 ? Colors.white : Colors.black,
                          ),
                          Text(
                            "Brief",
                            style: TextStyle(
                                color: currentTab == 0
                                    ? Colors.white
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
