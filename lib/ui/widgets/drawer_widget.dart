import 'package:flutter/material.dart';
import 'package:mlmapp/ui/screens/certificates/certificates_screen.dart';
import 'package:mlmapp/ui/screens/gallery/gallery_screen.dart';
import 'package:mlmapp/ui/screens/holidayOffers/holiday_offers_screen.dart';
import 'package:mlmapp/ui/screens/leatherBazaar/leather_bazaar_screen.dart';
import 'package:mlmapp/ui/screens/logout/logout_screen.dart';
import 'package:mlmapp/ui/screens/settings/settings_screen.dart';
import 'package:mlmapp/ui/screens/shopping/shopping_screen.dart';
import 'package:mlmapp/ui/screens/zoomMeetings/zoom_meetings_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
        children: [
          MenuItem(
            imageUrl: 'assets/icons/Shops.png',
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
            imageUrl: 'assets/icons/Leather.png',
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
            imageUrl: 'assets/icons/Holiday.png',
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
            imageUrl: 'assets/icons/Certificate.png',
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
            imageUrl: 'assets/icons/Picture.png',
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
            imageUrl: 'assets/icons/Zoom.png',
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
            imageUrl: 'assets/icons/Settings.png',
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
            imageUrl: 'assets/icons/Logout.png',
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
  final String imageUrl;

  // final IconData icon;
  final String title;
  final Function()? onTap;

  const MenuItem({
    Key? key,
    required this.imageUrl,
    // required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imageUrl,
        width: 30,
      ),
      title: Text(title),
      onTap: onTap,
    );
  }
}
