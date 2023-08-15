import 'package:flutter/material.dart';
import 'package:mlmapp/ui/screens/certificates/certificates_screen.dart';
import 'package:mlmapp/ui/screens/gallery/gallery_screen.dart';
import 'package:mlmapp/ui/screens/holidayOffers/holiday_offers_screen.dart';
import 'package:mlmapp/ui/screens/leatherBazaar/leather_bazaar_screen.dart';
import 'package:mlmapp/ui/screens/logout/logout_screen.dart';
import 'package:mlmapp/ui/screens/settings/settings_screen.dart';
import 'package:mlmapp/ui/screens/shopping/shopping_screen.dart';
import 'package:mlmapp/ui/screens/zoomMeetings/zoom_meetings_screen.dart';

import '../screens/achievements/achievements_screen.dart';

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
          MenuItem(
            icon: Icons.store,
            title: 'Shopping',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ShoppingScreen(),
                ),
              );
            },
          ),
          MenuItem(
            icon: Icons.store,
            title: 'Leather Bazaar',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LeatherBazaarScreen(),
                ),
              );
            },
          ),
          MenuItem(
            icon: Icons.store,
            title: 'Holiday Offers',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HolidayOffersScreen(),
                ),
              );
            },
          ),
          MenuItem(
            icon: Icons.store,
            title: 'Certificates',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CertificatesScreen(),
                ),
              );
            },
          ),
          MenuItem(
            icon: Icons.store,
            title: 'Gallery',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const GalleryScreen(),
                ),
              );
            },
          ),
          MenuItem(
            icon: Icons.store,
            title: 'Zoom Meetings',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ZoomMeetingsScreen(),
                ),
              );
            },
          ),
          MenuItem(
            icon: Icons.store,
            title: 'Settings',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
          ),
          MenuItem(
            icon: Icons.store,
            title: 'Logout',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LogoutScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function()? onTap;

  const MenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey.shade900,
      ),
      title: Text(title),
      onTap: onTap,
    );
  }
}
