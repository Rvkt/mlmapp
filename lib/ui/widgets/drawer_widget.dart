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
            leading: Icon(
              Icons.store,
              color: Colors.grey.shade900,
            ),
            title: const Text('Shopping'),
            onTap: () => print('Shopping Button pressed'),
          ),
          ListTile(
            leading: Icon(
              Icons.confirmation_number,
              color: Colors.grey.shade900,
            ),
            title: const Text('Leather'),
            onTap: () => print('Leather Button pressed'),
          ),
          ListTile(
            leading: Icon(
              Icons.airplane_ticket,
              color: Colors.grey.shade900,
            ),
            title: const Text('Holiday Offers'),
            onTap: () => print('Holiday Button pressed'),
          ),
          ListTile(
            leading: Icon(
              Icons.assignment_ind,
              color: Colors.grey.shade900,
            ),
            title: const Text('Certificates'),
            onTap: () => print('Certificates Button pressed'),
          ),
          ListTile(
            leading: Icon(
              Icons.image,
              color: Colors.grey.shade900,
            ),
            title: const Text('Gallery'),
            onTap: () => print('Gallery Button pressed'),
          ),
          ListTile(
            leading: Icon(
              Icons.videocam,
              color: Colors.grey.shade900,
            ),
            title: const Text('Zoom meetings'),
            onTap: () => print('Zoom Button pressed'),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey.shade900,
            ),
            title: const Text('Settings'),
            onTap: () => print('Settings Button pressed'),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.grey.shade900,
            ),
            title: const Text('Logout'),
            onTap: () => print('Logout Button pressed'),
          ),
        ],
      ),
    );
  }
}
