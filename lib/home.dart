import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:suivi_apprenant_odk/Screens/dashboard/dashboard.dart';
import 'package:suivi_apprenant_odk/config/colors.dart';
import 'package:suivi_apprenant_odk/partials/drawer.dart';

import 'Screens/dashboard/brief.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  Widget currentScreen = const Dashboard();
  final PageStorageBucket bucket = PageStorageBucket();
  late TabController _tabController;
  int currentTab = 0;

  final List<Widget> screen = [
    const Brief(),
    // Home(),
    // Rendu()
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  late DateTime backup;
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Accueil"),
        ),
        drawer: const NavBar(),
        body: WillPopScope(
            onWillPop: onwillPop,
            child: PageStorage(bucket: bucket, child: currentScreen)),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home())),
          child: const Icon(
            Icons.home,
            color: Palette.mainColor,
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => const Dashboard()));
        //   },
        //   child: const Icon(Icons.home),
        // ),
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

  Future<bool> onwillPop() async {
    DateTime currentDateTime = DateTime.now();
    bool backButton =
        currentDateTime.difference(backup) > const Duration(seconds: 2);
    if (backButton) {
      backup = currentDateTime;
      Fluttertoast.showToast(
          msg: "Appuyer à nouveau pour quitter.",
          backgroundColor: Colors.grey,
          textColor: Colors.white);
      return false;
    }
    return true;
  }
}
