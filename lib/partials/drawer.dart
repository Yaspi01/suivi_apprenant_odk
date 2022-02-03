import 'package:flutter/material.dart';
import 'package:suivi_apprenant_odk/Screens/dashboard/dashboard.dart';
import 'package:suivi_apprenant_odk/config/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // String nom, prenom, telephone;
  // Future getUserData() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   setState(() {
  //     telephone = preferences.getString('telephone');
  //   });
  // }

  // logout(BuildContext context) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.remove("telephone");
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => Login()));
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
                child: Text(
              "telephone",
              style: TextStyle(color: Colors.white),
            )),
            decoration: BoxDecoration(color: Palette.mainColor),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Accueil"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              }),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Brief"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              }),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Rendu"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              }),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Mes ressources"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              }),
        ],
      ),
    );
  }
}
