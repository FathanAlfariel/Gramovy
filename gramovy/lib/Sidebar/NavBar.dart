import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: const EdgeInsets.only(top: 50, left: 30),
        children: [
          const DrawerHeader(
                child: Text(
                  'Gramovy.',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: const Text(
                    'Home',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    _scaffoldKey.currentState!.closeDrawer();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ListTile(
                  leading: const Icon(Icons.settings, color: Colors.white),
                  title: const Text(
                    'Settings',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    _scaffoldKey.currentState!.closeDrawer();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ListTile(
                  leading: const Icon(Icons.help, color: Colors.white),
                  title: const Text(
                    'Help',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    _scaffoldKey.currentState!.closeDrawer();
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.info, color: Colors.white),
                title: const Text(
                  'About',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  _scaffoldKey.currentState!.closeDrawer();
                },
              ),
        ],
      ),
    );
  }
}