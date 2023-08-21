import 'package:flutter/material.dart';
import 'package:mlmapp/ui/widgets/drawer_widget.dart';
import '../../widgets/custom_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlmapp/ui/screens/leatherBazaar/my_icons.dart';

class LeatherBazaarScreen extends StatelessWidget {
  const LeatherBazaarScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: CustomAppbar(
          iconColor: Colors.white,
          title: "Leather Bazaar",
          actionsRow: [
            PopupMenuButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              position: PopupMenuPosition.under,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Notification 1"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Notification 2"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Notification 3"),
                ),
              ],
            ),
            PopupMenuButton(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("One"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Two"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Three"),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: const AppDrawer(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Text("LeatherBazaarScreen"),
            SvgPicture.asset(iconRefer),
            const Text("LeatherBazaarScreen"),
            //  svg
          ],
        ),
      ),
    );
  }
}
