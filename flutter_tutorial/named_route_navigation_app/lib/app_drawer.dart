import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_forward),
            title: const Text('Screen A'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/screenA');
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_forward),
            title: const Text('Screen B'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/screenB');
            },
          ),
        ],
      ),
    );
  }
}
