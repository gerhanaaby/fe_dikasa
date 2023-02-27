import 'package:fe_dikasa/features/login/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [1, 2, 3, 4, 5, 6, 7, 8];
  int currentPage = 1;
  late Widget page;

  @override
  Widget build(BuildContext context) {
    if (currentPage == 1) {
      page = Login();
    } else if (currentPage == 2) {
      page = Login();
    } else if (currentPage == 3) {
      page = const Login();
    } else if (currentPage == 4) {
      page = Login();
    } else if (currentPage == 5) {
      page = Login();
    } else if (currentPage == 6) {
      page = Login();
    } else if (currentPage == 7) {
      page = Login();
    } else if (currentPage == 8) {
      page = Login();
    }
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: SingleChildScrollView(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              drawerHeader(),
            ],
          ),
        ),
      ),
      body: page,
    );
  }

  Widget drawerMenu() {
    return Column(
      children: [
        drawerMenuItem(
            1, "dasboard", Icon(Icons.ice_skating), Icon(Icons.ac_unit)),
        drawerMenuItem(
            2, "dasboard", Icon(Icons.ice_skating), Icon(Icons.ac_unit)),
        drawerMenuItem(
            3, "dasboard", Icon(Icons.ice_skating), Icon(Icons.ac_unit)),
        drawerMenuItem(
            4, "dasboard", Icon(Icons.ice_skating), Icon(Icons.ac_unit)),
        drawerMenuItem(
            5, "dasboard", Icon(Icons.ice_skating), Icon(Icons.ac_unit))
      ],
    );
  }

  Widget drawerMenuItem(int id, String title, Icon leading, Icon trailing) {
    return ListTile(
      selectedColor: Colors.blueAccent,
      leading: leading,
      trailing: trailing,
      title: Text(title),
      onTap: () {
        // Update the state of the app
        // ...
        // Then close the drawer
        Navigator.pop(context);
        setState(() {
          currentPage = id;
        });
      },
    );
  }

  Widget drawerHeader() {
    return const UserAccountsDrawerHeader(
      accountEmail: Text("email"),
      accountName: Text("name"),
      currentAccountPicture: CircleAvatar(
        foregroundImage: AssetImage(""),
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}
