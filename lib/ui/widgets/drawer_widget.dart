import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('UserName'),
            accountEmail: const Text('user@email.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/George_Jones.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.store),
            title: const Text('Shopping'),
            onTap: () => print('Shopping Button pressed'),
          ),
          ListTile(
            leading: const Icon(Icons.confirmation_number),
            title: const Text('Leather'),
            onTap: () => print('Leather Button pressed'),
          ),
          ListTile(
            leading: const Icon(Icons.airplane_ticket),
            title: const Text('Holiday Offers'),
            onTap: () => print('Holiday Button pressed'),
          ),
          ListTile(
            leading: const Icon(Icons.assignment_ind),
            title: const Text('Certificates'),
            onTap: () => print('Certificates Button pressed'),
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Gallery'),
            onTap: () => print('Gallery Button pressed'),
          ),
          ListTile(
            leading: const Icon(Icons.videocam),
            title: const Text('Zoom meetings'),
            onTap: () => print('Zoom Button pressed'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => print('Settings Button pressed'),
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => print('Logout Button pressed'),
          ),
        ],
      ),
    );
  }
}
